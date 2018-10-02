def welcome
  puts "Good day! My name is Professor Flitwick and will be helping you to create your very first Spell Book. What is your Wizard name?"
end

def get_user_name
  user_name = gets.chomp
  # User.new(name: user_name)
  User.create(name: user_name)
end
