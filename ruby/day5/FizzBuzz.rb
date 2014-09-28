# Fizz Buzz

# if a number is divisible by 3... output 'Fizz'
# if a number is divisible by 5... output 'Buzz'
# So numbers like 15 that are divisible by 3 and 5 should out put 'FizzBuzz'

# HINT
# % is a module operator
# it returns 0 (zero) if a number is divisible by another number
# 10 % 3 = 1
# 10 % 2 = 0


  (0..30).each do |number|
    #p number
    if (number % 3 == 0) && (number % 5 == 1)
      puts "#{number} = Fizz"
    end

    if (number % 5 == 0) && (number % 3 == 1)
      puts "#{number} = Buzz"
    end

    if (number % 3 == 0) && (number % 5 == 0)
      puts "#{number} = FizzBuzz"
    end

  end
