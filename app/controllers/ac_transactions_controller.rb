class AcTransactionsController < InheritedResources::Base

  before_action :authenticate_user!
  before_action :set_transaction, only: [:update]

  def create
    #binding.pry
    unless params[:ac_transaction][:ui_payee].empty?
      payee = AcPayee.create(name: params[:ac_transaction][:ui_payee], active: true)
      params[:ac_transaction][:ac_payee_id] = payee.id
    end
    #unless params[:ac_transaction][:ui_category].empty?
    #   category = AcCategory.create(name: params[:ac_transaction][:ui_category])
    #   params[:ac_transaction][:ac_category_id] = category.id
    # end
    @ac_transaction = AcTransaction.new(ac_transaction_params)
    begin
      @ac_transaction.save
    rescue Exception => e
      raise e.inspect
    end

    respond_to do |format|    
      if @ac_transaction.save
        format.html { redirect_to ac_transactions_path, notice: 'Transaction was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end



  private

    def set_transaction
      @transaction = AcTransaction.find(params[:id])
    end

    def ac_transaction_params
      params.require(:ac_transaction).permit(:date, :debit, :credit, :balance, :description, :check_number, :ac_account_id, :ac_payee_id, :ac_category_id, :ac_sub_category_id, :ac_transaction_status_id, :ui_account, :ui_payee, :ui_category, :ui_sub_category, :ui_transaction_status)
    end

end
