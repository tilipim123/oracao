class ListController < ApplicationController
	def list


		@mornings1 = Morning.where('hour LIKE ?', "%#{"um"}%")
		@mornings2 = Morning.where('hour LIKE ?', "%#{"dois"}%")
		@mornings3 = Morning.where('hour LIKE ?', "%#{"tres"}%")
		@mornings4 = Morning.where('hour LIKE ?', "%#{"quatro"}%")
		@mornings5 = Morning.where('hour LIKE ?', "%#{"cinco"}%")
		@mornings6 = Morning.where('hour LIKE ?', "%#{"seis"}%")
		@mornings7 = Morning.where('hour LIKE ?', "%#{"sete"}%")
		@mornings8 = Morning.where('hour LIKE ?', "%#{"oito"}%")
		@mornings9 = Morning.where('hour LIKE ?', "%#{"nove"}%")
		@mornings10 = Morning.where('hour LIKE ?', "%#{"dez"}%")
		@mornings11 = Morning.where('hour LIKE ?', "%#{"onze"}%")
		@mornings12 = Morning.where('hour LIKE ?', "%#{"doze"}%")

		@afternoons1 = Afternoon.where('hour LIKE ?', "%#{"um"}%")
		@afternoons2 = Afternoon.where('hour LIKE ?', "%#{"dois"}%")
		@afternoons3 = Afternoon.where('hour LIKE ?', "%#{"tres"}%")
		@afternoons4 = Afternoon.where('hour LIKE ?', "%#{"quatro"}%")
		@afternoons5 = Afternoon.where('hour LIKE ?', "%#{"cinco"}%")
		@afternoons6 = Afternoon.where('hour LIKE ?', "%#{"seis"}%")
		@afternoons7 = Afternoon.where('hour LIKE ?', "%#{"sete"}%")
		@afternoons8 = Afternoon.where('hour LIKE ?', "%#{"oito"}%")
		@afternoons9 = Afternoon.where('hour LIKE ?', "%#{"nove"}%")
		@afternoons10 = Afternoon.where('hour LIKE ?', "%#{"dez"}%")
		@afternoons11 = Afternoon.where('hour LIKE ?', "%#{"onze"}%")
		@afternoons12 = Afternoon.where('hour LIKE ?', "%#{"doze"}%")

		@nights1 = Night.where('hour LIKE ?', "%#{"um"}%")
		@nights2 = Night.where('hour LIKE ?', "%#{"dois"}%")
		@nights3 = Night.where('hour LIKE ?', "%#{"tres"}%")
		@nights4 = Night.where('hour LIKE ?', "%#{"quatro"}%")
		@nights5 = Night.where('hour LIKE ?', "%#{"cinco"}%")
		@nights6 = Night.where('hour LIKE ?', "%#{"seis"}%")
		@nights7 = Night.where('hour LIKE ?', "%#{"sete"}%")
		@nights8 = Night.where('hour LIKE ?', "%#{"oito"}%")
		@nights9 = Night.where('hour LIKE ?', "%#{"nove"}%")
		@nights10 = Night.where('hour LIKE ?', "%#{"dez"}%")
		@nights11 = Night.where('hour LIKE ?', "%#{"onze"}%")
		@nights12 = Night.where('hour LIKE ?', "%#{"doze"}%")

		@dawns1 = Dawn.where('hour LIKE ?', "%#{"um"}%")
		@dawns2 = Dawn.where('hour LIKE ?', "%#{"dois"}%")
		@dawns3 = Dawn.where('hour LIKE ?', "%#{"tres"}%")
		@dawns4 = Dawn.where('hour LIKE ?', "%#{"quatro"}%")
		@dawns5 = Dawn.where('hour LIKE ?', "%#{"cinco"}%")
		@dawns6 = Dawn.where('hour LIKE ?', "%#{"seis"}%")
		@dawns7 = Dawn.where('hour LIKE ?', "%#{"sete"}%")
		@dawns8 = Dawn.where('hour LIKE ?', "%#{"oito"}%")
		@dawns9 = Dawn.where('hour LIKE ?', "%#{"nove"}%")
		@dawns10 = Dawn.where('hour LIKE ?', "%#{"dez"}%")
		@dawns11 = Dawn.where('hour LIKE ?', "%#{"onze"}%")
		@dawns12 = Dawn.where('hour LIKE ?', "%#{"doze"}%")

	end

	def show
		@morning = Morning.find(params[:id])
	end


	def new
		@morning = Morning.new
	end

	def create
		@morning = Morning.create(morning_params)

		redirect_to @morning
	end

	private
	def morning_params
		params.permit(:name, :hour)
	end
end
