class AcSchedulesController < InheritedResources::Base

  before_action :authenticate_user!
  before_action :set_ac_schedule, only: [:update, :edit]
  before_action :set_data_lists, only: [:new, :edit]

  def index
    @ac_schedules = AcSchedule.all
    @ac_schedules = @ac_schedules.sort_by {|schedule| schedule.next_date}
  end

  def new
    @ac_schedule = AcSchedule.new
    @ac_schedule.first_date = Time.now
    render layout: "home"
  end

  def edit
    render layout: "home"
  end

  def create
    @ac_schedule = AcSchedule.new(ac_schedule_params)

    payee = AcPayee.find_or_create_by(name: params[:ac_schedule][:ui_payee])
    payee.update(active: true)
    @ac_schedule.ac_payee = payee

    category = AcCategory.find_or_create_by(name: params[:ac_schedule][:ui_category])
    @ac_schedule.ac_category = category
    sub_category = AcSubCategory.find_or_create_by(name: params[:ac_schedule][:ui_sub_category])
    sub_category.update(ac_category_id: category.id) if sub_category.ac_category_id.nil?
    @ac_schedule.ac_sub_category = sub_category

    respond_to do |format|    
      if @ac_schedule.save
        format.html { redirect_to ac_transactions_path, notice: 'schedule was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    #binding.pry
    payee = AcPayee.find_or_create_by(name: params[:ac_schedule][:ui_payee])
    @ac_schedule.ac_payee = payee

    category = AcCategory.find_or_create_by(name: params[:ac_schedule][:ui_category])
    @ac_schedule.ac_category = category

    sub_category = AcSubCategory.find_or_create_by(name: params[:ac_schedule][:ui_sub_category])
    @ac_schedule.ac_sub_category = sub_category

    respond_to do |format|    
      if @ac_schedule.update(ac_schedule_params)
        format.html { redirect_to ac_schedules_path, notice: 'schedule was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

    def set_ac_schedule
      @ac_schedule = AcSchedule.find(params[:id])
    end

    def ac_schedule_params
      params.require(:ac_schedule).permit(:debit, :credit, :description, :auto_insert, :frequency, :frequency_period, :first_date, :type, 
        :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id,
        :ui_payee, :ui_category, :ui_sub_category)
    end

    def set_data_lists
      @ac_payees = AcPayee.all.order(name: :asc).where(active: true)
      @ac_categories = AcCategory.all.order(name: :asc)
      @ac_sub_categories = AcSubCategory.all.order(name: :asc)
    end

end
