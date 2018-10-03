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
    spell_type = ["Curse", "Hex", "Charm", "Enchantment", "Spell"]
    puts "There are five kinds of spell types: curses, hexes, charms, enchantments and regular spells."
    puts "What kind would you like to see first?"
    puts "Curse"
    puts "Hex"
    puts "Charm"
    puts "Enchantment"
    puts "Spell"
    loop do
      first_choice = gets.chomp.capitalize
      if spell_type.include?(first_choice)
        puts "Great! Let's explore #{first_choice}!"
        puts "******"
        show_random_spell(first_choice)
        break
      else
        puts "******"
        puts "You spell like a Muggle...that is not magic, please pick again..."
        puts " "
        puts "CURSE"
        puts "HEX"
        puts "CHARM"
        puts "ENCHANTMENT"
        puts "SPELL"
        puts " "
        puts "******"
      end
    end
  end

  def save_or_ignore_spell
    PROMPT.select("Would you like to save #{Spell.last.name} to your spellbook?", %w(Yes No))
    
  end

end
