class AnimalsController < ApplicationController

	def new
		@animal = Animal.new
		@animal.nombre = "compadre"
		puts "IIIIDDDDDDDDs"
  	end
 
  	def create
  		params.permit!
  		@animal = Animal.new(params[:animal])
		@animal.save
		redirect_to @animal
  	end

  	def show
  		@animal = Animal.find(params[:id])
  	end

  

end
