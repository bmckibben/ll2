class AcSchedulesController < InheritedResources::Base

  before_action :authenticate_user!
  before_action :set_ac_schedule, only: [:update]


  def create
    #binding.pry
    unless params[:ac_schedule][:ui_payee].empty?
      payee = AcPayee.create(name: params[:ac_schedule][:ui_payee], active: true)
      params[:ac_schedule][:ac_payee_id] = payee.id
    end
    unless params[:ac_schedule][:ui_category].empty?
      category = AcCategory.create(name: params[:ac_schedule][:ui_category])
      params[:ac_schedule][:ac_category_id] = category.id
    end    
    unless params[:ac_schedule][:ui_sub_category].empty?
      subcategory = AcSubCategory.create(name: params[:ac_schedule][:ui_sub_category], ac_category_id: params[:ac_schedule][:ac_category_id])
      params[:ac_schedule][:ac_sub_category_id] = subcategory.id
    end 
    @ac_schedule = AcSchedule.new(ac_schedule_params)
    puts "~~Saving: #{params[:id]}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    respond_to do |format|    
      if @ac_schedule.save
        format.html { redirect_to ac_schedules_path, notice: 'schedule was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    #binding.pry
    unless params[:ac_schedule][:ui_payee].empty?
      payee = AcPayee.create(name: params[:ac_schedule][:ui_payee], active: true)
      params[:ac_schedule][:ac_payee_id] = payee.id
    end
    unless params[:ac_schedule][:ui_category].empty?
      category = AcCategory.create(name: params[:ac_schedule][:ui_category])
      params[:ac_schedule][:ac_category_id] = category.id
    end    
    unless params[:ac_schedule][:ui_sub_category].empty?
      subcategory = AcSubCategory.create(name: params[:ac_schedule][:ui_sub_category], ac_category_id: params[:ac_schedule][:ac_category_id])
      params[:ac_schedule][:ac_sub_category_id] = subcategory.id
    end 
    puts "~~Updating: #{params[:id]}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
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
      params.require(:ac_schedule).permit(:debit, :credit, :description, :auto_insert, :frequency, :frequency_period, :first_date, :type, :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id)
    end

end
