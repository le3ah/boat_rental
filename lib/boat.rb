class Boat

  attr_reader :type
  def initialize(type, price_per_hour)
    @type = type
    @price_per_hour = price_per_hour
  end
end
