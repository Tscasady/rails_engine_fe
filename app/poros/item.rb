class Item
  attr_reader :name, :id, :unit_price, :description

  def initialize(item_data)
    @id = item_data[:id]
    @name = item_data[:attributes][:name]
    @unit_price = item_data[:attributes][:unit_price]
    @description = item_data[:attributes][:description]
  end
end
