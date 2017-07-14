class RecoursesController < InheritedResources::Base
	
	def new
		@recourse = Recourse.new
		@reparation = params[:reparation_id]
	end	
  private

    def recourse_params
      params.require(:recourse).permit(:reparation_id, :product_id, :Fecha, :Cantidad)
    end
end

