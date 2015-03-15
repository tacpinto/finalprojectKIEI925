class TransactionsController < ApplicationController

	def index
		@transactions = Transaction.all
	
	end

	def show
		@transaction = Transaction.find_by(id: params["id"])
		@material = Material.find_by(id: @transaction.material_id)
		@buyer = User.find_by(id: @transaction.buyer_user_id)
		@seller = User.find_by(id: @transaction.seller_user_id)
	end	 

	def new
    @transaction = Transaction.new
  end

  def create
		transaction_params= params.require(:transaction).permit(:tax_receipt)
			# have to be long because of security
		Transaction.create(transaction_params)
  	redirect_to transaction_path
  end	

  def edit
  	@transaction=Transaction.find_by(id: params["id"])
  end

  def update
  	transaction_params= params.require(:transaction).permit(:tax_receipt)
		@transaction=Transaction.find_by(id: params["id"])
		@transaction.update(transaction_params)
		redirect_to transaction_path 	
  end

  def destroy
  	@transaction=Transaction.find_by(id: params["id"])
  	@transaction.destroy
  	redirect_to trasanction_path
  end

end