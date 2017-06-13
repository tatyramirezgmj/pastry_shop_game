module Methods_bake_shop
  def desserts
    puts "A-Cake.🍰" , "B-Chocolate.🍫" , "C-Cookie.🍪"
  end
  def cake_f
    puts "S -strawberry 🍓  🍰", "V - vanilla 🍰","H - hazelnut 🌰  🍰"
  end
  def chocolate_f
    puts "W - White 🍫", "M - Milk 🍫", "D - Dark 🍫"
  end
  def cookie_f
    puts "MW - Macadamia and with White Chocolate Chips 🍪","CC - Chocolate Chips 🍪", "SC - Salted Caramel with White Chocolate 🍪"
  end
  def sorry_message
    puts "I'm sorry we don't have that flavor available today"
  end
  def bye_message
    puts "Have a great day, bye 😁!"
  end
  def put_initial_message
    puts "Please select the letter you would like to eat"
  end
  def user_want_more
    puts "Would you like something else?"
  end
  def check(ans)
    if ans.downcase.include? 'no'
      puts bye_message
      exit
    else
      app
    end
  end

  yes = true
  no = false
end

include Methods_bake_shop

def app

  puts "Welcome to The Pastry Shop 🍪 "
  puts "What would you like to eat today?"
  desserts
  put_initial_message
  users_desserts = gets.chomp
  users_desserts.to_s.downcase!

  if "a"==users_desserts
    puts "Which flavor would you like?"
    cake_f
    put_initial_message
    users_cake_flavors = gets.chomp
    users_cake_flavors.to_s.downcase!

    # case users_cake_flavors
    if "s"==users_cake_flavors
      puts "Here is your strawberry 🍓 🍰, we hope you enjoy it 😁"
    elsif "v"== users_cake_flavors
      puts "Here is your vanilla 🍰, we hope you enjoy it 😁"
    elsif "h"== users_cake_flavors
      puts "Here is your hazelnut 🌰  🍰, we hope you enjoy it 😁"
    else
      puts sorry_message
    end

    user_want_more
    user_want_to_reset=gets.chomp
    user_want_to_reset.downcase!
    check user_want_to_reset

  elsif "b"==users_desserts
    puts "Which type of chocolate would you prefer?"
    chocolate_f
    puts put_initial_message
    users_chocolate_flavors = gets.chomp
    users_chocolate_flavors.to_s.downcase!

    # case users_chocolate_flavors
    if"w"==users_chocolate_flavors
      puts "Here is your white 🍫 , we hope you enjoy it 😁"
    elsif"m" == users_chocolate_flavors
      puts "Here is your milk 🍫 , we hope you enjoy it 😁"
    elsif"d" == users_chocolate_flavors
      puts "Here is your dark 🍫 , we hope you enjoy it 😁"
    else
      puts sorry_message
    end

    user_want_more
    user_want_to_reset=gets.chomp
    user_want_to_reset.to_s.downcase!
    check user_want_to_reset
  elsif "c"==users_desserts
    puts "Which flavor of cookie would you prefer?"
    cookie_f
    put_initial_message
    user_cookie_f = gets.chomp
    user_cookie_f.downcase!

    # case user_cookie_f
    if "mw"==user_cookie_f
      puts "Here is macadamia and with white 🍪 , we hope you enjoy it 😁"
    elsif "cc"==user_cookie_f
      puts "Here is your chocolate chips 🍪 , we hope you enjoy it 😁"
    elsif "sc"==user_cookie_f
      puts "Here is your salted caramel with white chocolate 🍪 , we hope you enjoy it 😁"
    else
      puts sorry_message
    end

    user_want_more
    user_want_to_reset=gets.chomp
    user_want_to_reset.downcase!
    check user_want_to_reset
  else
    user_want_more
    user_want_to_reset=gets.chomp
    user_want_to_reset.to_s.downcase!
    check user_want_to_reset
  end
end

puts app
