class UsertypesController < ApplicationController
  def index
  end

	def new
		@usertype = Usertype.new
	end

	 def edit
  	end

	def create
		@usertype = Usertype.new(Nombre: params[:usertype][:Nombre])

		if	@usertype.save
			redirect_to "/tipos/"
		else
			render :new
		end
	end

end