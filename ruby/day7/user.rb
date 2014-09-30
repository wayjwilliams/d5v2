# we want to track every user that is created
#
# class User
#   def self.create_user(name)
#   end
# end
#
# User.create_user "jesse"
# User.create_user "bill"
# User.create_user "ted"
#
# puts User.all


class User

  @@users = []

  def self.record_the_user(user)
    @@users << user
  end

  def initialize(name)
    @name = name
    # store the user somewhere
    User.record_the_user(self)
  end
end

jesse = User.new "jesse"
bill = User.new "bill"

puts "All users: #{User.all_users}"
