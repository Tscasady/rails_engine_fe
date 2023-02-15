class CommerceFacade
  def initialize(service = CommerceService.new)
    @service = service
  end

  def merchants
    response = service.call('/api/v1/merchants')
    response[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def merchant(id)
    response = service.call("/api/v1/merchants/#{id}")
    Merchant.new(response[:data])
  end

  private 

  attr_reader :service
end
