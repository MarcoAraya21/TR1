class CproductsController < InheritedResources::Base
	before_action :authenticate_user!
  private

    def cproduct_params
      params.require(:cproduct).permit(:Nombre, :Descripcion, :Imagen, :User_id, :Pcategory_id, :Status_id, :Trademark_id)
    end
end

