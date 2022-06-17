class TestsController < ApplicationController
	def new
		@sai = Sai.new
	end

	def create
		t = Sai.create!(test_params)
		if t.save
			redirect_to root_url
		else
			flash[:danger] = "image not saved"
			redirect_to root_url
		end
	end

	private
		def test_params
			params.require(:sai).permit(:name,:image)
		end
end
