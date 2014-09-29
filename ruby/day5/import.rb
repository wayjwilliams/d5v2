require './shipment'


money = 0
earth_total = 0
moon_total = 0
mars_total = 0
uranus_total = 0
jupiter_total = 0
pluto_total = 0
saturn_total = 0
mercury_total = 0
fry_bonus = 0
amy_bonus = 0
bender_bonus = 0
leela_bonus = 0
fry_pilot = 0
amy_pilot = 0
bender_pilot = 0
leela_pilot = 0




open("planet_express_logs").each do |line|

values_array = line.chomp.split(",")

  shipment = Shipment.new
  shipment.destination      = values_array[0]
  shipment.what_got_shipped = values_array[1]
  shipment.how_many         = values_array[2].to_i
  shipment.money            = values_array[3].to_i

  money += shipment.money

  case shipment.destination
  when "Earth"
    earth_total += shipment.money
  when "Moon"
    moon_total += shipment.money
  when "Mars"
    mars_total += shipment.money
  when "Uranus"
    uranus_total += shipment.money
  when "Jupiter"
    jupiter_total += shipment.money
  when "Pluto"
    pluto_total += shipment.money
  when "Saturn"
    saturn_total += shipment.money
  when "Mercury"
    mercury_total += shipment.money
  end

  case shipment.destination
  when "Earth"
    fry_bonus += shipment.money * 0.10
    fry_pilot += 1
  when "Mars"
    amy_bonus += shipment.money * 0.10
    amy_pilot += 1
  when "Uranus"
    bender_bonus += shipment.money * 0.10
    bender_pilot += 1
  else
    leela_bonus += shipment.money * 0.10
    leela_pilot += 1
  end

end

puts "How much money did we make this week?"
puts "Money: #{money}"

puts "How much money did we make from each planet?"
puts "Earth: #{earth_total}"
puts "Moon: #{moon_total}"
puts "Mars: #{mars_total}"
puts "Uranus: #{uranus_total}"
puts "Jupiter: #{jupiter_total}"
puts "Pluto: #{pluto_total}"
puts "Saturn: #{saturn_total}"
puts "Mercury: #{mercury_total}"


puts "What were the bonuses?"
puts "Fry: #{fry_bonus}"
puts "Amy: #{amy_bonus}"
puts "Bender: #{bender_bonus}"
puts "Leela: #{leela_bonus}"

puts "How many deliveries did each pilot make?"
puts "Fry: #{fry_pilot}"
puts "Amy: #{amy_pilot}"
puts "Bender: #{bender_pilot}"
puts "Leela: #{leela_pilot}"
