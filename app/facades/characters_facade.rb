class CharactersFacade

  def self.get_two
    characters = []
    2.times do
      all_characters = CharacterService.random_two
      characters << Character.new(all_characters[:results][rand(0..99)])
    end
    characters
  end
end
