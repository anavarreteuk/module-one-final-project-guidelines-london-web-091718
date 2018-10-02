class CLI

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

def spellbook_instructions_and_choice
  spell_types = ["curses", "cexes", "charms", "enchantments", "spells"]
  first_choice = ""
  puts "There are five kinds of spells: curses, hexes, charms, enchantments and regular spells. Which would you like to explore first?"
    loop do
    first_choice = gets.chomp
    if first_choice.downcase == "curses"
      show_random_curse
      break
    elsif first_choice.downcase == "hexes"
      show_random_hex
      break
    elsif first_choice.downcase == "charms"
      show_random_charm
      break
    elsif first_choice.downcase == "enchantments"
      show_random_enchantment
      break
    elsif first_choice.downcase == "spells"
      show_random_spell
      break
    else
      puts " "
      puts "You spell like a Muggle...that is not magic, please pick again..."
      puts " "
      puts "CURSES"
      puts "HEXES"
      puts "CHARMS"
      puts "ENCHANTMENTS"
      puts "SPELLS"
    end
  end
end



end

  # puts "There are five kinds of spells: curses, hexes, charms, enchantments and regular spells. Which would you like to explore first?"
  # first_choice = gets.chomp
  # if spell_types.include?(first_choice.downcase)
  #   puts "Great! Let's explore #{first_choice}!"
  # else
  #   puts "You sound like a Muggle...that is not a type of spell, fool! Please choose again."
  # end
