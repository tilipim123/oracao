class MorningController < ApplicationController

	def new
		@morning = Morning.new
		#@foot = @morning.foots.new 
	end

	def create
		@morning = Morning.new(morning_params)
		
		if @morning.save
			flash[:notice] = "Deu certo."
		else
			flash[:alert] = "Tente novamente."
		end
		redirect_to morning_path
	end

	private
	def morning_params
		params.require(:morning).permit(:name, :hour, :gfcm)
	end

end
