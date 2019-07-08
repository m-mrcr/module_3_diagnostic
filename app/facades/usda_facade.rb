class UsdaFacade

  def initialize(query)
    @query = query
  end

  def foods
    binding.pry
  end

  private

  def usda_service
    UsdaService.new(@query)
  end
end
