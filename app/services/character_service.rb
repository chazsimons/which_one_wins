class CharacterService

  def self.conn
    Faraday.new('https://comicvine.gamespot.com/api/characters/')
  end

  def self.random_two
    response = conn.get do |req|
      req.params[:format]  = 'json'
      req.params[:api_key] = ENV['comic_api_key']
      req.params[:offset]  = rand(0..1492)
    end
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
