class UsdaFacade
  attr_reader :query
  def initialize(query)
    @query = query
  end

  def total_results
    usda_service[:list][:total]
  end

  def search_results
    r = usda_service[:list][:item].take(10).map do |item|
      Food.new(item)
    end
  end

  private

  def usda_service
    UsdaService.new(@query).food_info
  end
end
