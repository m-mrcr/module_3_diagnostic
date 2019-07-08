class UsdaFacade

  def foods
    if usda_service.food_info(query)
  end

  private

  def usda_service
    UsdaService.new(query)
  end
end
