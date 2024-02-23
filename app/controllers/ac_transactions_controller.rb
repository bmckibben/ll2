class AcTransactionsController < InheritedResources::Base

  before_action :authenticate_user!
  before_action :set_transaction, only: [:update]

  def index
    @balance = AcAccount.find(1).opening_balance
    @ac_transactions = AcTransaction.all.order(:date)
    schedules = AcSchedule.all
    @ac_schedules = schedules.sort_by {|a| a.next_date}
  end

  def new
    @ac_transaction = AcTransaction.new
    unless params["schedule_id"].nil?
      scheduled = AcSchedule.find(params["schedule_id"])
      @ac_transaction.ac_account_id = scheduled.ac_account_id
      @ac_transaction.ac_payee_id = scheduled.ac_payee_id
      @ac_transaction.ac_category_id = scheduled.ac_category_id
      @ac_transaction.ac_sub_category_id = scheduled.ac_sub_category_id
      @ac_transaction.date = scheduled.next_date
      @ac_transaction.credit = scheduled.credit
      @ac_transaction.debit = scheduled.debit
      @ac_transaction.ac_transaction_status_id = 2
      @ac_transaction.description = scheduled.description
    end
  end

  def create
    #binding.pry
    unless params[:ac_transaction][:ui_payee].empty?
      payee = AcPayee.create(name: params[:ac_transaction][:ui_payee], active: true)
      params[:ac_transaction][:ac_payee_id] = payee.id
    end
    unless params[:ac_transaction][:ui_category].empty?
      category = AcCategory.create(name: params[:ac_transaction][:ui_category])
      params[:ac_transaction][:ac_category_id] = category.id
    end    
    unless params[:ac_transaction][:ui_sub_category].empty?
      subcategory = AcSubCategory.create(name: params[:ac_transaction][:ui_sub_category], ac_category_id: params[:ac_transaction][:ac_category_id])
      params[:ac_transaction][:ac_sub_category_id] = subcategory.id
    end 
    @ac_transaction = AcTransaction.new(ac_transaction_params)
    puts "~~Saving: #{params[:id]}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    respond_to do |format|    
      if @ac_transaction.save
        format.html { redirect_to ac_transactions_path, notice: 'Transaction was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    #binding.pry
    unless params[:ac_transaction][:ui_payee].empty?
      payee = AcPayee.create(name: params[:ac_transaction][:ui_payee], active: true)
      params[:ac_transaction][:ac_payee_id] = payee.id
    end
    unless params[:ac_transaction][:ui_category].empty?
      category = AcCategory.create(name: params[:ac_transaction][:ui_category])
      params[:ac_transaction][:ac_category_id] = category.id
    end    
    unless params[:ac_transaction][:ui_sub_category].empty?
      subcategory = AcSubCategory.create(name: params[:ac_transaction][:ui_sub_category], ac_category_id: params[:ac_transaction][:ac_category_id])
      params[:ac_transaction][:ac_sub_category_id] = subcategory.id
    end 
    puts "~~Updating: #{params[:id]}~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    respond_to do |format|    
      if @ac_transaction.update(ac_transaction_params)
        format.html { redirect_to ac_transactions_path, notice: 'Transaction was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

    def set_transaction
      @ac_transaction = AcTransaction.find(params[:id])
    end

    def ac_transaction_params
      params.require(:ac_transaction).permit(:date, :debit, :credit, :balance, :description, :check_number, :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id, :ac_transaction_status_id, :ui_account, :ui_payee, :ui_category, :ui_sub_category, :ui_transaction_status)
    end

end
