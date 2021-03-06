class Dock

  attr_reader :name,
              :max_rental_time,
              :boat_inventory,
              :total_renters,
              :total_rental_by_person
  def initialize(name, max_rental_time)
    @name = name
    @max_rental_time = max_rental_time
    @boat_inventory = {}
    @total_renters = []
    @log_hour = 0
    @total_rental_by_person = {}
  end

  def add_boats_to_inventory(type)
    @boat_inventory[type] = type.price_per_hour
  end

  def log_hour
    @log_hour += 1
  end

  def add_renters(renter)
    @total_renters << renter
  end

  def rent(type,renter)
    @total_rental_by_person[name] = type
  end
    # @total_rental_by_person[renter] = type
   # total_rental_by_person = { Patrick => kayak_1, kayak_2, canoe, Eugene => sup_1, sup_2}


  def log_hour
    @log_hour += 1
  end

  def revenue
    # for each boat rented add one hour & multiply by price_per_hour
    @boat_inventory[type].each do |price_per_hour|
      price_per_hour * @log_hour
    end
  end
end
