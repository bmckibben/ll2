class AcTransactionsController < InheritedResources::Base

  before_action :authenticate_user!
  before_action :set_transaction, only: [:update, :status_update, :edit]
  before_action :set_data_lists, only: [:new, :edit]

  def index
    @hide_status = params["hide_status"] || "R"
    @balance = @cleared = AcAccount.find(1).opening_balance
    @ac_transactions = AcTransaction.all.includes(:ac_transaction_status).order("ac_transaction_status.status_code desc").order(:date, :created_at)
    @ac_schedules = AcSchedule.all
    @ac_schedules = @ac_schedules.sort_by {|schedule| schedule.next_date}
  end

  def new
    @ac_transaction = AcTransaction.new
    @ac_transaction.date = Time.now
    @ac_transaction.ac_transaction_status_id = 2
    unless params["schedule_id"].nil?
      scheduled = AcSchedule.find(params["schedule_id"])
      @ac_transaction.ac_schedule_id = scheduled.id
      @ac_transaction.ac_account_id = scheduled.ac_account_id
      @ac_transaction.ac_payee_id = scheduled.ac_payee_id
      @ac_transaction.ac_category_id = scheduled.ac_category_id
      @ac_transaction.ac_sub_category_id = scheduled.ac_sub_category_id
      @ac_transaction.date = scheduled.next_date
      @ac_transaction.credit = scheduled.credit
      @ac_transaction.debit = scheduled.debit
      @ac_transaction.description = scheduled.description
      @ac_transaction.schedule_date = @ac_transaction.date
    end
    @ac_payees = AcPayee.all.order(name: :asc)
    render layout: "home"
  end

  def edit
    render layout: "home"
  end

  def create
    @ac_transaction = AcTransaction.new(ac_transaction_params)

    payee = AcPayee.find_or_create_by(name: params[:ac_transaction][:ui_payee])
    payee.update(active: true)
    @ac_transaction.ac_payee = payee

    category = AcCategory.find_or_create_by(name: params[:ac_transaction][:ui_category])
    @ac_transaction.ac_category = category

    sub_category = AcSubCategory.find_or_create_by(name: params[:ac_transaction][:ui_sub_category])
    sub_category.update(ac_category_id: category.id) if sub_category.ac_category_id.nil?
    @ac_transaction.ac_sub_category = sub_category
    @ac_transaction.ac_transaction_status_id = 2

    respond_to do |format|    
      if @ac_transaction.save
        format.html { redirect_to ac_transactions_path, notice: 'Transaction was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    payee = AcPayee.find_or_create_by(name: params[:ac_transaction][:ui_payee])
    payee.update(active: true)
    @ac_transaction.ac_payee = payee

    category = AcCategory.find_or_create_by(name: params[:ac_transaction][:ui_category])
    @ac_transaction.ac_category = category

    sub_category = AcSubCategory.find_or_create_by(name: params[:ac_transaction][:ui_sub_category])
    sub_category.update(ac_category_id: category.id) if sub_category.ac_category_id.nil?
    @ac_transaction.ac_sub_category = sub_category

    respond_to do |format|    
      if @ac_transaction.update(ac_transaction_params)
        format.html { redirect_to ac_transactions_path, notice: 'Transaction was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def status_update
    @ac_transaction.update(ac_transaction_status_id: params[:status] )
    render json: nil, status: 200
  end

  def reconcile
    reconcile_status = AcTransactionStatus.where(name: "Reconciled").first.id
    cleared_status = AcTransactionStatus.where(name: "Cleared").first.id
    puts "~~~~~~~~#{reconcile_status}/#{cleared_status}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    AcTransaction.where(ac_transaction_status_id:cleared_status).update(ac_transaction_status_id:reconcile_status)
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    redirect_to ac_transactions_path, notice: 'Cleared items have been marked reconciled.' 
  end

  private

    def set_transaction
      @ac_transaction = AcTransaction.find(params[:id])
    end

    def ac_transaction_params
      params.require(:ac_transaction).permit(:date, :debit, :credit, :balance, :description, :check_number, :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id, :ac_transaction_status_id, :ac_transaction_id, :ac_schedule_id,:schedule_date, :ui_account, :ui_payee, :ui_category, :ui_sub_category, :ui_transaction_status)
    end
    
    def set_data_lists
      @ac_payees = AcPayee.all.order(name: :asc).where(active: true)
      @ac_categories = AcCategory.all.order(name: :asc)
      @ac_sub_categories = AcSubCategory.all.order(name: :asc)
    end
end
