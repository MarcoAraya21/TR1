class ProductsController < InheritedResources::Base
  private

    def product_params
      params.require(:product).permit(:Nombre, :Descripcion, :Precio, :Stock, :Imagen, :Ptype_id, :Pcategory_id, :Status_id, :Trademark_id)
    end
end

