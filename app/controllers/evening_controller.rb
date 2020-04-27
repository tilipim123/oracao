class EveningController < ApplicationController

	def new
		@evening = Evening.new
	end

	def create
		@evening = Evening.new(evening_params)
		
		if @evening.save
			flash[:notice] = "Deu certo."
		else
			flash[:alert] = "Tente novamente."
		end
		redirect_to evening_path
	end

	private
	def evening_params
		params.require(:evening).permit(:name, :hour, :gfcm)
	end

end
