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
  p words

  # words << word
  #
  # words.split(",")






  # words = []
  #
  # word = ""
  #
  # line.chomp.chars.each do |c|
  #   if c == ','
  #
  #     words << word
  #     word = ""
  #
  #     else
  #       words = word + c
  #       p word
  #     end
  #
  #   end
  end
  #
  # words << word
  #
  # p words

  #  p lines.split(",")
