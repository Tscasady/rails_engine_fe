class CommerceService
  def initalize(uri = '')
    @uri = uri
  end

  def call
    service.get(@uri)
  end

  private 

  def service
    Faraday.new(service_params)
  end

  def service_params
    {
      url: base_uri,
    }
  end

  def base_uri
    'localhost:3000'
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
