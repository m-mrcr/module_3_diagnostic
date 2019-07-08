class UsdaService

  private


  def get_json(url, params = nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: ' https://api.nal.usda.gov') do |f|
      f.headers['Authorization'] = "token #{@user.github_token}"
      f.adapter Faraday.default_adapter
    end
  end

end
