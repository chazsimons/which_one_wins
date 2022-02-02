class CharactersFacade

  def self.get_two
    characters = CharacterService.random_two
    Character.new(characters[:results][rand(0..99)])
  end
end
