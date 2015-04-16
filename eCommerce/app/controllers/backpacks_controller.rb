class BackpacksController < ApplicationController
	def index # Indice que muestra todos los articulos
		@backpacks = Backpack.all
	end

	def show # Mostrar un articulo
		@backpack = Backpack.find(params[:id])
	end

	def new # Crear un nuevo articulo
		@backpack = Backpack.new
	end

	def create
		@backpack = Backpack.new(backpack_params)
		@backpack.save
		redirect_to backpack_path(@backpack)
	end

	def edit # Actualizar articulo
		@backpack = Backpack.find(params[:id])
	end

	def update
		@backpack = Backpack.find(params[:id])
		@backpack.update(backpack_params)
		redirect_to backpack_path(@backpack)
	end

	def destroy # Eliminar un articulo
		@backpack = Backpack.find(params[:id])
		@backpack.destroy

		redirect_to backpacks_path
	end

	private
		def backpack_params
			params.require(:backpack).permit(:Color, :Capacity, :Pockets, :Waterproof)
		end
end
