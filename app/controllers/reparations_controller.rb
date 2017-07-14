class ReparationsController < InheritedResources::Base
	before_action :authenticate_user!
  private

    def reparation_params
      params.require(:reparation).permit(:user_id, :cproduct_id, :Descripcion, :FechaI, :FechaF, :PrecioBase, :PrecioFinal, :Llamada)
    end
end

