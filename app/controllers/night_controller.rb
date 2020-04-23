class NightController < ApplicationController

	def index
		@nights = Night.all
	end

	def show
		@night = Night.find(params[:id])
	end


	def new
		@night = Night.new
	end

	def create
		@night = Night.create(night_params)
        
		redirect_to night_path
	end

	private
	def night_params
		params.require(:night).permit(:name, :hour)
	end

end
