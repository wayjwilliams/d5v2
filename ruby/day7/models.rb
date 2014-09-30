class Vehicle

  def go
    @speed = 20
  end

  def brake
    @speed = 0
  end

  def speed
    "We are going #{@speed}"
  end

end

# The car inherits from the Vehicle

class Car < Vehicle

end



# class Bike < Vehicle
#
#   def speed
#     "I AM ON A BIKE"
#   end
# end
