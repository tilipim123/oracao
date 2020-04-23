class AfternoonController < ApplicationController

	def index
		@afternoons = Afternoon.all
	end

	def show
		@afternoon = Afternoon.find(params[:id])
	end


	def new
		@afternoon = Afternoon.new
	end

	def create
		@afternoon = Afternoon.create(afternoon_params)
        
		redirect_to afternoon_path
	end

	private
	def afternoon_params
		params.require(:afternoon).permit(:name, :hour)
	end

end
