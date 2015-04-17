class LaptopsController < ApplicationController
	def index
		@laptops = Laptop.all
	end
	def new
		@laptop = Laptop.new
	end
	def show
		@laptop = Laptop.find(params[:id])
	end
	def edit
		@laptop = Laptop.find(params[:id])
	end
	def create
		@laptop = Laptop.new(laptop_params)
		@laptop.save
		redirect_to laptop_path(@laptop)
	end
	def update
		@laptop = Laptop.find(params[:id])
		@laptop.update(laptop_params)
		redirect_to laptop_path(@laptop)
	end
	def destroy
		@laptop = Laptop.find(params[:id])
		@laptop.destroy
		redirect_to root_path
	end
	private
		def laptop_params
			params.require(:laptop).permit(:brand, :model, :processor_brand, :ram_size, :price)
		end
end
