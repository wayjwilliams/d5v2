# Modules allow re-use of code, without inheritance

module Speedometer
  def speed
    "We are going #{@speed}"
  end
end

module Movable
  def go
    @speed = 20
  end

  def brake
    @speed = 0
  end

  def speed
    "BOOO"
  end
end

class Car
  # include Movable
  # include Speedometer
end

class Bike
  include Movable
  include Speedometer
  # if a variable is different in two modules. the
  #LAST ONE wins!!!
end
