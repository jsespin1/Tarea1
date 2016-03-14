class AnimalsController < ApplicationController

	def index
		@animals = Animal.all       
  	end

	def new
		@animal = Animal.new
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

  	def destroy
	    @animal = Article.find(params[:id])
	    @animal.destroy
	    redirect_to animals_path
	 end

	def edit
  		@animal = Animal.find(params[:id])
  	end


  	def update
	    @animal = Animal.find(params[:id])

	    respond_to do |format|
	      if @animal.update_attributes(animal_params)
	        format.html { redirect_to(@animal, :notice => 'Información Actualizada!') }
	        format.xml  { head :ok }
	      else
	        format.html { render :action => "edit" }
	        format.xml  { render :xml => @animal.errors, :status => :unprocessable_entity }
	      end
	    end
	 end

	def destroy
		
		    @animal = Animal.find(params[:id])
		    @animal.destroy

		    respond_to do |format|
		      format.html { redirect_to(animals_url) }
		      format.xml  { head :ok }
		    end
	end



  	def animal_params
      params.require(:animal).permit(:nombre, :tipo, :nacimiento, :origen, :comentarios)
    end

  

end
