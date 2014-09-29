# Record format
# Destination, What got shipped, Number of crates, Money we made

# Good news Rubyists!
# We have a week of records tracking what we shipped at Planet Express.
# I need you to answer a few questions for Hermes.

# How much money did we make this week?
# How much money did we make broken down by planet?
# ie.. how much did we make shipping to Earth? Mars? Saturn? etc.

# Also, bonuses are paid to employees who pilot the Planet Express
# Different employees have favorite destinations they always pilot to
# Fry - pilots to Earth (because he isn't allowed into space)
# Amy - pilots to Mars (so she can visit her family)
# Bender - pilots to Uranus (teeheee...)
# Leela - pilots everywhere else because she is the only responsible one

# How many trips did each employee pilot?
# They get a bonus of 10% of the money for the shipment as the bonus
# How much of a bonus did each employee get?

# BONUS - uses classes for each shipment; but not necessary



open("planet_express_logs").each do |line|
  step1 = line.chomp
  step2 = step1.chars

  words = []
  word = ""

  step2.each do |c|
    if c == ","
      words << word
      word = ""
    else
      word = word + c

    end
  end
  words << word


  # class Shipment
  #   attr_accessor :destination, :what_got_shipped, :how_many, :money
  #
  # #or you could do
  # # attr_accessor :destination
  # # attr_accessor :what_got_shipped
  # # etc
  #
  #
  #
  # end

require './shipment'
require 'pry'

# shipments = []

money = 0
fry_bonus = 0
amy_bonus = 0
bender_bonus = 0
leela_bonus = 0




open("planet_express_logs").each do |line|

values_array = line.chomp.split(",")

  shipment = Shipment.new
  shipment.destination      = values_array[0]
  shipment.what_got_shipped = values_array[1]
  shipment.how_many         = values_array[2].to_i
  shipment.money            = values_array[3].to_i

  money += shipment.money

  # if shipment.destination == "Earth"
  #   Fry
  # elsif shipment.destination == "Mars"
  #   Amy
  # elsif shipment.destination == "Uranus"
  #   Bender
  # end

  case shipment.destination
  when "Earth"
    fry_bonus += shipment.money * 0.10
  when "Mars"
    amy_bonus += shipment.money * 0.10
  when "Uranus"
    bender_bonus += shipment.money * 0.10
  else
    leela_bonus += shipment.money * 0.10
  end


end

puts "How much money did we make this week?"
puts "Money: #{money}"

puts "How much money did we make from each planet?"
puts "#{shipment_destination} made #{shipment.money}"

puts "What were the bonuses?"
puts "Fry: #{fry_bonus}"
puts "Amy: #{amy_bonus}"
puts "Bender: #{bender_bonus}"
puts "Leela: #{leela_bonus}"

# puts "Shipments: #{shipments}"
#
# pizza = shipments.select do |shipment|
#   shipment.what_got_shipped == "Pizza"
# end
#
# puts "Total for pizza: #{pizza.map(&:money).inject(:+)}"
#
# fry = shipment.select do |shipment|
#   shipment.destination == "Earth"
# end
# puts "fry: #{fry.map(&:money).inject(:+)} * 0.10"




end
