class Item
  attr_reader :name, :id

  def initialize(item_data)
    @id = item_data[:id]
    @name = item_data[:attributes][:name]
  end
end
