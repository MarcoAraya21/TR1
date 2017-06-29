class PtypesController < ApplicationController
  def index
  end

	def new
		@ptype = Ptype.new
	end

	 def edit
  	end

	def create
		@ptype = Ptype.new(Nombre: params[:ptype][:Nombre])

		if	@ptype.save
			redirect_to "/tipos/"
		else
			render :new
		end
	end

end