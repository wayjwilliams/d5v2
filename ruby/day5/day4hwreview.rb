# Define a Robot class
  class Robot
# A robot has a name
    def initialize(name)
      @name = name
    end
# A robot should have a method called 'say_hi' and it should return "Hi!"
    def say_hi
      puts "Hi!"
    #you could also have put just "Hi!" without the 'puts'
    end

# A robot should have a method called 'say_name' and it should return
# "My name is X" where X is the robot's name

    def say_name
      puts "My name is #{@name}"
    #same as say_hi, you don't need 'puts'
    end
  end

robot1 = Robot.new("Ahnold")
robot1.say_hi
robot1.say_name

# Define a BendingUnit class
# A BendingUnit inherits from Robot
  class BendingUnit < Robot

# A bending unit has a method called 'bend'
# The bend method has one argument 'object_to_bend'
# The bend method should put to the console "Bend X!" where X is object_to_bend
    def bend(object_to_bend)
      puts "Bend #{object_to_bend}!"
    end

  end

  robot2 = BendingUnit.new("Bender")
  robot2.bend("STEEL")
  robot2.say_hi
  robot2.say_name


# Define an ActorUnit class
# An ActorUnit inherits from Robot

  class ActorUnit < Robot

# An ActorUnit has a method called 'change_name'
# The 'change_name' method accepts an argument 'new_name'
# The 'change_name' method changes the name property of Robot to 'new_name'

    def change_name(new_name)
      new_name = @name
      puts "My new name is #{@name}"
    end
  end

  robot3 = ActorUnit.new("Danger")
  robot3.say_name
  robot3.change_name("Ruby")
