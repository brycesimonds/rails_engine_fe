class Merchant

  attr_reader :name,
              :character

  def initialize(data)
    @name = data[:name]
    @id = data[:id]
  end

end
