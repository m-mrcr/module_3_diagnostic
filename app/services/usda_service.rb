class UsdaService

  def initialize(query)
    @query = query
  end

  def food_info
    get_json("?format=json&q=#{@query}&sort=r&max=25&offset=0")
  end

  private

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://api.nal.usda.gov/ndb/search') do |f|
      f.params['api_key'] = ENV["USDA_Key"]
      f.adapter Faraday.default_adapter
    end
  end

end
