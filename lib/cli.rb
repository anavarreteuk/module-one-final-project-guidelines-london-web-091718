class CLI

PROMPT = TTY::Prompt.new

  def welcome
    puts "********************************************************************************************************"
    puts "Good day!"
    puts "My name is Professor Flitwick and will be helping you to create your very first Spell Book."
    puts "What is your Wizard name?"
    puts "********************************************************************************************************"
  end

  def get_user_name_and_create
    user_name = gets.chomp
    User.create(name: user_name)
    puts "Lovely to meet you #{User.last.name}!"
    puts "********************************************************************************************************"
  end

  def display_home_list
    options = ["Find friends/characters", "Create Spellbook"]
    choice = PROMPT.select("What would you like to do?", options)
    case choice
    when "Find friends/characters"
      puts "TO BE MADE...."
    when "Create Spellbook"
      get_spellbook_name
    end
  end

  def get_spellbook_name
    puts "********************************************************************************************************"
    puts "Your Spell Book will contain five different spells of your choice."
    puts "What title would you like to give it?"
    puts "********************************************************************************************************"
    sb_name = gets.chomp
    Spellbook.create(name: sb_name, user_id: User.last.id)
    puts "********************************************************************************************************"
    puts "Very creative. Let's begin filling #{Spellbook.last.name} with some magic."
    begin_spellbook
  end

  def begin_spellbook
    puts "********************************************************************************************************"
    choose_between_5_spell_types
    save_or_ignore_spell
  end

  def save_or_ignore_spell
    user_spellbook = []
    user_spellbook << Spell.where(spellbook_id: Spellbook.last.id)
    if user_spellbook.flatten.count > 4
      puts "You have reached the limit of 5 spells. Let's take a look at your choices."
      view_spellbook
    else
      choice = PROMPT.select("Would you like to save #{Spell.last.name} to your spellbook?", %w(Yes No))
      case choice
      when "Yes"
        Spell.update(Spell.last, :spellbook_id => Spellbook.last.id)
        puts "Interesting. Very interesting...#{Spell.last.name} has been added to #{Spellbook.last.name}, #{User.last.name}."
        puts "Now choose another!"
        begin_spellbook
      when "No"
        puts "If that is your wish, then let us try another."
        second_save_or_ignore_spell
      end
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
    puts "********************************************************************************************************"
    puts "<-------#{Spellbook.last.name.upcase}------->"
    puts "********************************************************************************************************"
    puts "1. #{Spell}"
  end

end
