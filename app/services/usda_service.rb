class UsdaService

  def initialize(query)
    @query = query
  end

  def food_info
    get_json("https://api.nal.usda.gov/ndb/search/?format=json&q=#{@query}&sort=n&max=25&offset=0")
  end

  private

  def get_json(url)
    response = conn.get(url, @query)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    binding.pry
    Faraday.new(url: ' https://api.nal.usda.gov/') do |f|
      f.headers['api_key'] = ENV["USDA_Key"]
      f.adapter Faraday.default_adapter
    end
  end

end
