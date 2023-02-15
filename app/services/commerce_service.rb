class CommerceService
  def initialize(uri = '')
    @uri = uri
  end

  def call
    parse(service.get(@uri))
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
    'http://localhost:3000'
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
