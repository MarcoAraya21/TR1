class StatusesController < ApplicationController
  def index
  end

	def new
		@status = Status.new
	end

	 def edit
  	end

	def create
		@status = Status.new(Nombre: params[:status][:Nombre])

		if	@status.save
			redirect_to "/tipos/"
		else
			render :new
		end
	end

end