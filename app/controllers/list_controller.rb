class ListController < ApplicationController
	def list


		@mornings1 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"um"}%", "%#{"um"}%")
		@mornings2 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"dois"}%", "%#{"um"}%")
		@mornings3 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"tres"}%", "%#{"um"}%")
		@mornings4 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"quatro"}%", "%#{"um"}%")
		@mornings5 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"cinco"}%", "%#{"um"}%")
		@mornings6 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"seis"}%", "%#{"um"}%")
		@mornings7 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"sete"}%", "%#{"um"}%")
		@mornings8 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"oito"}%", "%#{"um"}%")
		@mornings9 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"nove"}%", "%#{"um"}%")
		@mornings10 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"dez"}%", "%#{"um"}%")
		@mornings11 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"onze"}%", "%#{"um"}%")
		@mornings12 = Morning.where('hour LIKE ? AND gfcm LIKE ?', "%#{"doze"}%", "%#{"um"}%")

		@evenings1 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"um"}%", "%#{"dois"}%")
		@evenings2 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"dois"}%", "%#{"dois"}%")
		@evenings3 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"tres"}%", "%#{"dois"}%")
		@evenings4 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"quatro"}%", "%#{"dois"}%")
		@evenings5 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"cinco"}%", "%#{"dois"}%")
		@evenings6 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"seis"}%", "%#{"dois"}%")
		@evenings7 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"sete"}%", "%#{"dois"}%")
		@evenings8 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"oito"}%", "%#{"dois"}%")
		@evenings9 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"nove"}%", "%#{"dois"}%")
		@evenings10 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"dez"}%", "%#{"dois"}%")
		@evenings11 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"onze"}%", "%#{"dois"}%")
		@evenings12 = Evening.where('hour LIKE ? AND gfcm LIKE ?', "%#{"doze"}%", "%#{"dois"}%")

		@nights1 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"um"}%", "%#{"tres"}%")
		@nights2 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"dois"}%", "%#{"tres"}%")
		@nights3 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"tres"}%", "%#{"tres"}%")
		@nights4 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"quatro"}%", "%#{"tres"}%")
		@nights5 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"cinco"}%", "%#{"tres"}%")
		@nights6 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"seis"}%", "%#{"tres"}%")
		@nights7 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"sete"}%", "%#{"tres"}%")
		@nights8 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"oito"}%", "%#{"tres"}%")
		@nights9 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"nove"}%", "%#{"tres"}%")
		@nights10 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"dez"}%", "%#{"tres"}%")
		@nights11 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"onze"}%", "%#{"tres"}%")
		@nights12 = Night.where('hour LIKE ? AND gfcm LIKE ?', "%#{"doze"}%", "%#{"tres"}%")

		@dawns1 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"um"}%", "%#{"quatro"}%")
		@dawns2 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"dois"}%", "%#{"quatro"}%")
		@dawns3 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"tres"}%", "%#{"quatro"}%")
		@dawns4 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"quatro"}%", "%#{"quatro"}%")
		@dawns5 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"cinco"}%", "%#{"quatro"}%")
		@dawns6 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"seis"}%", "%#{"quatro"}%")
		@dawns7 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"sete"}%", "%#{"quatro"}%")
		@dawns8 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"oito"}%", "%#{"quatro"}%")
		@dawns9 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"nove"}%", "%#{"quatro"}%")
		@dawns10 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"dez"}%", "%#{"quatro"}%")
		@dawns11 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"onze"}%", "%#{"quatro"}%")
		@dawns12 = Dawn.where('hour LIKE ? AND gfcm LIKE ?', "%#{"doze"}%", "%#{"quatro"}%")

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
