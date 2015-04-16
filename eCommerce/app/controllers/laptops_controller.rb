class LaptopsController < ApplicationController
	def index # Mostrar todos los articulos
		@laptops = Laptop.all
	end

	def show # Mostrar un solo articulo
		@laptop = Laptop.find(params[:id])
	end

	def new # Crear nuevo articulo
		@laptop = Laptop.new
	end

	def create
		@laptop = Laptop.new(laptop_params)
		@laptop.save
		redirect_to laptop_path(@laptop)
	end

	def update # Actualizar articulo
		@laptop = Laptop.find(params[:id])
		@laptop.update(laptop_params)
		redirect_to laptop_path(@laptop)
	end

	def edit
		@laptop = Laptop.find(params[:id])
	end

	def destroy # Eliminar un articulo
		@laptop = Laptop.find(params[:id])
		@laptop.destroy

		redirect_to laptops_path
	end

	private
	def laptop_params
		params.require(:laptop).permit(:Brand, :Model, :Processor, :RAM, :Price)
	end

end
