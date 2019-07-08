class UsdaFacade

  def initialize(query)
    @query = query
  end

  def total_results
    usda_service.food_info
  end

  def top_ten_results
    if usda_service.food_info.class == Hash
      []
    else
      usda_service.food_info.take(5).map do |food|
        Food.new(food)
      end
    end
  end
"https://api.nal.usda.gov/ndb/search/?format=json&q=#{@query}&sort=n&max=25&offset=0&api_key=#{ENV["USDA_Key"]}" 
  private

  def usda_service
    UsdaService.new(@query)
  end
end
