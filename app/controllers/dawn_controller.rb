class DawnController < ApplicationController

	def new
		@dawn = Dawn.new
		#@foot = @morning.foots.new 
	end

	def create
		@dawn = Dawn.new(dawn_params)
		
		if @dawn.save
			flash[:notice] = "Deu certo."
		else
			flash[:alert] = "Tente novamente."
		end
		redirect_to dawn_path
	end

	private
	def dawn_params
		params.require(:dawn).permit(:name, :hour, :gfcm)
	end

end
