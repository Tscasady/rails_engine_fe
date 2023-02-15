class CommerceService
  def call(uri)
    parse(conn.get(uri))
  end

  private 

  def conn
    Faraday.new(conn_params)
  end

  def conn_params
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
