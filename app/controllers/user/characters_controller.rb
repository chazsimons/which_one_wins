class User::CharactersController < ApplicationController

  def index
    @characters = CharactersFacade.get_two
  end

  def update
    if Vote.exists?(name: params[:name])
      winner = Vote.find_by(name: params[:name])
      Vote.update(winner.id, wins: winner.wins + 1)
      redirect_to "/"
    else
      winner = Vote.create(vote_params)
      Vote.update(winner.id, wins: winner.wins + 1)
      redirect_to "/"
    end
  end

  private

  def vote_params
    params.permit(:name, :image)
  end
end
