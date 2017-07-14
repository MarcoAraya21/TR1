class SalesController < InheritedResources::Base
before_action :authenticate_user!
  def index
  	@sales = Sale.all
  end
  
  def new
		@sale = Sale.new
	end

  def create
		@sale = current_user.sales.new(	Total: params[:sale][:Total].to_i)
			if	@sale.save
				return redirect_to "/details/"
			else
				render :new
			end 
		end
  private
    def set_sale
      @sale = Sale.find(params[:id])
    end

    def sale_params
      params.require(:sale).permit(:user_id, :Total)
    end
end

