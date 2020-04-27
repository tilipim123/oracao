class NightController < ApplicationController

	def new
		@night = Night.new
	end

	def create
		@night = Night.new(night_params)
		
		if @night.save
			flash[:notice] = "Deu certo."
		else
			flash[:alert] = "Tente novamente."
		end
		redirect_to night_path
	end

	private
	def night_params
		params.require(:night).permit(:name, :hour, :gfcm)
	end

end
