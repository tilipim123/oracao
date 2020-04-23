class DawnController < ApplicationController

	def index
		@dawns = Dawn.all
	end

	def show
		@dawn = Dawn.find(params[:id])
	end


	def new
		@dawn = Dawn.new
	end

	def create
		@dawn = Dawn.create(dawn_params)
        
		redirect_to dawn_path
	end

	private
	def dawn_params
		params.require(:dawn).permit(:name, :hour)
	end

end
