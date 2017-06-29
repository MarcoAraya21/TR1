class PcategoriesController < InheritedResources::Base

  private

    def pcategory_params
      params.require(:pcategory).permit(:Nombre)
    end
end

