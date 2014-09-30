class Registry

  @@all_events = [] # => class variable

  def self.log_event(event) # => class method
    @@all_events << event
  end

  def self.all_events
    # global
    # applies to more than 1 object
    @@all_events
  end

end

##### -> instance method
# registry = Registry.new
# registry.events

##### -> class method
Registry.log_event "jwo almost fell down"
Registry.log_event "jwo goes too fast"
puts Registry.all_events # =>
