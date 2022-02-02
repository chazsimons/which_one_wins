class CharactersController < ApplicationController

  def index
    @characters = []
    2.times do
      @characters << CharactersFacade.get_two
    end
  end
end
