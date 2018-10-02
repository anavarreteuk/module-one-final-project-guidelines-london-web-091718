def welcome
  puts "Good day! My name is Professor Flitwick and will be helping you to create your very first Spell Book. What is your Wizard name?"
end

def get_user_name_and_create
  user_name = gets.chomp
  # User.new(name: user_name)
  User.create(name: user_name)
  puts "Lovely to meet you #{User.last.name}! What would you like to call your Spell Book?"
end

def get_spellbook_name
  sb_name = gets.chomp
  Spellbook.create(name: sb_name, user_id: User.last.id)
end

def spellbook_instructions
  spell_types = ["curses", "cexes", "charms", "enchantments", "spells"]
  puts "There are five kinds of spells: curses, hexes, charms, enchantments and regular spells. Which would you like to explore first?"
  first_choice = gets.chomp
  if spell_types.include?(first_choice.downcase)
    puts "Great! Let's explore #{first_choice}!"
  else
    puts "You sound like a Muggle...that is not a type of spell, fool!"
  end
end
