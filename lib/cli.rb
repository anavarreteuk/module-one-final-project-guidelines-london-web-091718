class CLI

PROMPT = TTY::Prompt.new

  def welcome
    puts "Good day! My name is Professor Flitwick and will be helping you to create your very first Spell Book. What is your Wizard name?"
  end

  def get_user_name_and_create
    user_name = gets.chomp
    User.create(name: user_name)
    puts "Lovely to meet you #{User.last.name}!"
  end

  def display_home_list
    options = ["Find friends/characters", "Create Spellbook"]
    choice = PROMPT.select("What would you like to do?", options)
    case choice
    when "Find friends/characters"
      puts "nfkdnslgn"
    when "Create Spellbook"
      get_spellbook_name
    end
  end

  def get_spellbook_name
    puts "What would you like to call your Spell Book?"
    sb_name = gets.chomp
    Spellbook.create(name: sb_name, user_id: User.last.id)
    puts "Very creative. Let's begin filling it with 5 spells of your choice."
    begin_spellbook
  end

  def begin_spellbook
    choose_between_5_spell_types
    save_or_ignore_spell
  end


  def save_or_ignore_spell
    choice = PROMPT.select("Would you like to save #{Spell.last.name} to your spellbook?", %w(Yes No))
    users_spellbook = 0
    case choice
    when "Yes"
      users_spellbook += 1
      if users_spellbook > 5
        puts "You have reached the limit of 5 spells. Let's take a look at your choices."
        view_spellbook
      else
        Spell.update(Spell.last, :spellbook_id => Spellbook.last.id)
        puts "Excellent choice #{User.last.name}, #{Spell.last.name} has been added to #{Spellbook.last.name}!"
        puts "Please choose another!"
        begin_spellbook
      end
    when "No"
      puts "Mmmmmm. Interesting. Very interesting..."
      second_save_or_ignore_spell
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

  def view_spellbook
    puts "kjfbds"
  end

end
