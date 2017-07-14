class InsumosController < InheritedResources::Base

	def index
		@insumos = Product.where(Ptype: 2)
	end

    def product_params
      params.require(:product).permit(:Nombre, :Descripcion, :Precio, :Stock, :Imagen, :Ptype_id, :Pcategory_id, :Status_id, :Trademark_id)
    end
end
