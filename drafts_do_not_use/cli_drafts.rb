class CLI

PROMPT = TTY::Prompt.new

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
      choose_between_5_spell_types
      save_or_ignore_spell
  end

  # def spellbook_instructions_and_choice
  #   spell_type = ["Curse", "Hex", "Charm", "Enchantment", "Spell"]
  #   puts "There are five kinds of spell types: curses, hexes, charms, enchantments and regular spells."
  #   puts "What kind would you like to see first?"
  #   puts "Curse"
  #   puts "Hex"
  #   puts "Charm"
  #   puts "Enchantment"
  #   puts "Spell"
  #   loop do
  #     first_choice = gets.chomp.capitalize
  #     if spell_type.include?(first_choice)
  #       puts "Great! Let's explore #{first_choice}!"
  #       puts "******"
  #       show_random_spell(first_choice)
  #       break
  #     else
  #       puts "******"
  #       puts "You spell like a Muggle...that is not magic, please pick again..."
  #       puts " "
  #       puts "CURSE"
  #       puts "HEX"
  #       puts "CHARM"
  #       puts "ENCHANTMENT"
  #       puts "SPELL"
  #       puts " "
  #       puts "******"
  #     end
  #   end
  # end

  def save_or_ignore_spell
    choice1 = PROMPT.select("Would you like to save #{Spell.last.name} to your spellbook?", %w(Yes No))
    case choice1
    when "Yes"
      Spell.update(Spell.last, :spellbook_id => Spellbook.last.id)
      puts "Excellent choice #{User.last.name}, #{Spell.last.name} has been added to #{Spellbook.last.name}!"
      puts "Please choose another!"
      spellbook_instructions_and_choice
    when "No"
      puts "Mmmmmm. Interesting. Very interesting..."
      second_save_or_ignore_spell
      # options = ["Same type", "Choose again"]
      # choice2 = PROMPT.select("Would you like another spell of the same type or choose again?", options)
      # case choice2
      # when "Same type"
      #   spell_type = Spell.last.spell_type
      #   show_random_spell(spell_type)
      #   #NEED TO ASK TO SAVE OR REPEAT AGAIN
      # when "Choose again"
      #   choose_between_5_spell_types
      #   #NEED TO ASK TO SAVE OR REPEAT AGAIN
      # end
    end
  end

  def choose_between_5_spell_types
    choice = PROMPT.select("Pick between one of these 5 spell types to receive a random spell suggestion:", %w(Curse Hex Charm Enchantment Spell))
    show_random_spell(choice)
  end

  def second_save_or_ignore_spell
    options = ["Same type", "Choose again"]
    choice = PROMPT.select("Would you like another spell of the same type or choose again?", options)
    case choice
    when "Same type"
      spell_type = Spell.last.spell_type
      show_random_spell(spell_type)
      save_or_ignore_spell
    when "Choose again"
      choose_between_5_spell_types
      save_or_ignore_spell
    end
  end

end





# def spellbook_instructions_and_choice
#   spell_types = ["curses", "hexes", "charms", "enchantments", "spells"]
#   # first_choice = ""
#   puts "There are five kinds of spells: curses, hexes, charms, enchantments and regular spells. Which would you like to explore first?"
#     loop do
#     first_choice = gets.chomp
#     if first_choice.downcase == "curses"
#       show_random_curse
#       break
#     elsif first_choice.downcase == "hexes"
#       show_random_hex
#       break
#     elsif first_choice.downcase == "charms"
#       show_random_charm
#       break
#     elsif first_choice.downcase == "enchantments"
#       show_random_enchantment
#       break
#     elsif first_choice.downcase == "spells"
#       show_random_spell
#       break
#     else
#       puts " "
#       puts "You spell like a Muggle...that is not magic, please pick again..."
#       puts " "
#       puts "CURSES"
#       puts "HEXES"
#       puts "CHARMS"
#       puts "ENCHANTMENTS"
#       puts "SPELLS"
#     end
#   end
# end
