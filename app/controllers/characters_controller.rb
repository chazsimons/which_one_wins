class CharactersController < ApplicationController

  def index
    @characters = CharactersFacade.get_two
  end
end
