class MorningController < ApplicationController

	def index
		@mornings = Morning.all
	end

	def show
		@morning = Morning.find(params[:id])
	end


	def new
		@morning = Morning.new
	end

	def create
		@morning = Morning.create(morning_params)
		redirect_to morning_path
	end

	private
	def morning_params
		params.require(:morning).permit(:name, :hour)
	end

end
