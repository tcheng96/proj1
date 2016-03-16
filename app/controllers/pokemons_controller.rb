class PokemonsController < ApplicationController
  def capture
  @pokemon = Pokemon.find(params[:id])
  @pokemon.trainer = current_trainer
  @pokemon.save
  redirect_to root_path
  end

  def damage
	  	@pokemon = Pokemon.find(params[:id])
	  	@pokemon.health = @pokemon.health - 10
	  	@pokemon.save
	  	# current_trainer = @pokemon.trainer
	  	redirect_to trainer_path(@pokemon.trainer)
	  	if (@pokemon.health <= 0)
	      @pokemon.destroy
    	end
  end

  def new
	    @pokemon = Pokemon.new
  end

    def create
	    @pokemon = Pokemon.new(params.require(:pokemon).permit(:name))
	    @pokemon.level = 1
	    @pokemon.health = 100
	    @pokemon.trainer = current_trainer
	    if @pokemon.save
	      redirect_to current_trainer
	    else
	      flash[:error] = @pokemon.errors.full_messages.to_sentence
	      redirect_to new_pokemon_path
	    end
  	end

end
