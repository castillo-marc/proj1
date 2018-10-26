class PokemonController < ApplicationController
  def capture
    @poke = Pokemon.find_by(id: params[:id])
    if @poke
      @poke.trainer_id = current_trainer.id
      @poke.save
    end
    redirect_to root_path
  end

  def damage
    @poke = Pokemon.find_by(id: params[:id])
    @tr = params[:trainer]
    @poke.health = @poke.health - 10
    if @poke.health <= 0
      @poke.delete
    else
      @poke.save
    end
    redirect_to controller: 'trainers', action: 'show', id: @tr
  end

  def new
    @pokemon = Pokemon.create()
  end

  def create
    @pokemon = Pokemon.create(
      level: 1,
      health: 100,
      trainer_id: current_trainer.id,
    )
    @pokemon.update(params.require(:pokemon).permit(:name, :ndex))
    if @pokemon.save
      redirect_to controller: 'trainers', action: 'show', id: current_trainer
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to new_path
    end
  end

end
