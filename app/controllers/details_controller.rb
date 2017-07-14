class DetailsController < InheritedResources::Base
	before_action :authenticate_user!

	def new
		@detail = Detail.new
		@s1 = Sale.last
	end



	def create
		@detail = Detail.new( sale_id: params[:detail][:sale_id],
							product_id: params[:detail][:product_id],
							Cantidad: params[:detail][:Cantidad].to_i)
		@sale = Sale.find params[:detail][:sale_id]
		p = Product.find params[:detail][:product_id]
	if @sale.Total == 0
		@sale.Total = p.Precio*@detail.Cantidad
	else
	@sale.Total = @sale.Total + p.Precio*@detail.Cantidad
	end
	p.Stock = p.Stock - @detail.Cantidad
	if p.save
		@sale.save


	respond_to do |format|
	if @detail.save
	format.html { redirect_to @detail.sale,
	notice: 'Producto se ha ingresado a venta.' }
	format.json { render action: 'show' ,
	status: :created,location: @detail }
	else
	format.html { render action: 'new'}
	format.json { render json: @detail.errors,
	status: :unprocessable_entity}
	end
end
else
return redirect_to :back, alert: "El stock del producto es " + (p.Stock + @detail.Cantidad).to_s
end
end



  def destroy
  		@detail = Detail.find(params[:id])
		@sale = @detail.sale

		p = @detail.product
		@sale.Total = @sale.Total - p.Precio*@detail.Cantidad
		p.Stock =p.Stock + @detail.Cantidad
		if @sale.save
			if p.save 
		@detail.destroy
		redirect_to details_path
	end
	end
	end




  private
   	def set_detail
      @detail = Detail.find(params[:id])
    end
    def detail_params
      params.require(:detail).permit(:sale_id, :product_id, :Cantidad)
    end
end

