class TrademarksController < InheritedResources::Base

  private

    def trademark_params
      params.require(:trademark).permit(:Nombre)
    end
end

