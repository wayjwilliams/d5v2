class Log
  @@Log = []
    def self.log_event(event)
      @@Log << event
    end

    def self.all_events
      @@Log
    end
  end

class Animals < Log
  def eat
    puts "#{@animal} ate fish!"
    Log.log_event "#{@animal} ate fish!"
  end

end

class Shark < Animals
   initialize(shark)
   @animal = shark
end

class Panda < Animals
   initialize(panda)
   @animal = shark
end


panda = Panda.new
panda.eat

shark = Shark.new
shark.eat

Log.log_event "#{@animal} ate fish!"
Log.all_events

#########
