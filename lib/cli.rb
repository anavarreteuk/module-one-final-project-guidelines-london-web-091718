class CLI

  PROMPT = TTY::Prompt.new
  FONT = TTY::Font.new(:doom)

  def welcome
    puts_super_fast FONT.write("ALOHOMORA", letter_spacing: 3)
    puts_super_fast "********************************************************************************************************"
    puts_fast "Hello there."
    puts ""
    puts_fast "My name is Professor Flitwick and will be helping you to create your very first Spell Book."
    puts ""
    puts_fast "What is your Wizard name?"
    puts_super_fast "********************************************************************************************************"
  end

  def get_user_name_and_create
    user_name = gets.chomp
    User.create(name: user_name)
    puts_fast "Lovely to meet you #{User.last.name}!"
    puts_super_fast "********************************************************************************************************"
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
    puts_super_fast "********************************************************************************************************"
    puts_fast "Your Spell Book will contain five different spells of your choice."
    puts_fast "What title would you like to give it?"
    puts_super_fast "********************************************************************************************************"
    sb_name = gets.chomp
    Spellbook.create(name: sb_name, user_id: User.last.id)
    puts_super_fast "********************************************************************************************************"
    puts_fast "Very creative. Let's begin filling #{Spellbook.last.name} with some magic."
    begin_spellbook
  end

  def begin_spellbook
    puts_super_fast "********************************************************************************************************"
    choose_between_5_spell_types
    save_or_ignore_spell
  end

  def choose_between_5_spell_types
    choice = PROMPT.select("Pick between one of these 5 spell types to receive a random spell suggestion:", %w(Spell Charm Hex Curse Enchantment))
    show_random_spell(choice)
  end

  def spellbook_array
    user_spellbook = []
    user_spellbook << Spell.where(spellbook_id: Spellbook.last.id)
    flattened_user_spellbook = user_spellbook.flatten
    return flattened_user_spellbook
  end

  def save_or_ignore_spell
    if spellbook_array.count > 4
      puts_fast "You have reached the limit of 5 spells. Let's take a look at your choices."
      view_spellbook
    else
      choice = PROMPT.select("Would you like to save #{Spell.last.name} to your spellbook?", %w(Yes No))
      case choice
      when "Yes"
        sb_id = Spellbook.last.id
        Spell.last.update(:spellbook_id => sb_id)
        puts_fast "Interesting. Very interesting...#{Spell.last.name} has been added to #{Spellbook.last.name}, #{User.last.name}."
        puts_fast "Now choose another!"
        begin_spellbook
      when "No"
        puts_fast "If that is your wish, then let us try another."
        second_save_or_ignore_spell
      end
    end
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
    rows = []
    rows << ["#{spellbook_array[0]["name"]}","#{spellbook_array[0]["effect"]}"]
    rows << ["#{spellbook_array[1]["name"]}","#{spellbook_array[1]["effect"]}"]
    rows << ["#{spellbook_array[2]["name"]}","#{spellbook_array[2]["effect"]}"]
    rows << ["#{spellbook_array[3]["name"]}","#{spellbook_array[3]["effect"]}"]
    rows << ["#{spellbook_array[4]["name"]}","#{spellbook_array[4]["effect"]}"]

    table = Terminal::Table.new :title => "#{Spellbook.last.name.upcase}", :headings => ['SPELL', 'EFFECT'], :rows => rows, :style => {:all_separators => true}
    table.style = {:width => 100, :padding_left => 2, :border_x => "=", :border_i => "+"}

    puts table
    sorting_offer
  end

  def sorting_offer
    puts_super_fast "********************************************************************************************************"
    puts_fast "Well done #{User.last.name}, your book, #{Spellbook.last.name}, is complete!"
    puts ""
    puts_fast "Something I did not mention to you before...the Sorting Hat has become rather, well really quite old as of late."
    puts ""
    puts_fast "We, professors at Hogwarts, have become increasingly concerned at some of the Sorting Hat's sorting choices."
    puts ""
    puts_fast "Your Spell Book can give us valuable insight about your character and personality based on your choices of spells."
    puts ""
    puts_fast "Hence, it has been decided by Dumbledoor that with your consent, we may use your book to assist the Sorting Hat in placing you into the right house."
    puts_super_fast "********************************************************************************************************"
    options = ["Go on then, sort me!", "No thanks - I'd rather not."]
    choice = PROMPT.select("Would you like to be sorted into a Hogwarts House?", options)
    case choice
    when options[0]
      sorting
    when options[1]
      puts_fast "Suit yourself."
      display_home_list
    end
  end

  def sorting
    get_houses
    # bar = ProgressBar.new(100, :bar, :elapsed)
    if !!detect_curse
      puts ""
      puts_fast "Your desire to fill your book with at least one curse is truly frightening."
      puts ""
      puts_fast "On behalf of the Wizarding community, it is with regret that you are hereby expelled."
      puts_super_fast FONT.write("Finite Incantatem", letter_spacing: 1)
      puts_super_fast FONT.write("THE END.", letter_spacing: 1)
    elsif most_common_spelltype == "Hex"
      puts_super_fast FONT.write("SLYTHERIN", letter_spacing: 2)
      house = House.find_by name: "Slytherin"
      User.last.update(:house_id => house[:id])
      house_menu
    elsif most_common_spelltype == "Charm"
      puts_super_fast FONT.write("RAVENCLAW", letter_spacing: 2)
      house = House.find_by name: "Ravenclaw"
      User.last.update(:house_id => house[:id])
      house_menu
    elsif most_common_spelltype == "Enchantment"
      puts_super_fast FONT.write("GRYFFINDOR", letter_spacing: 2)
      house = House.find_by name: "Gryffindor"
      User.last.update(:house_id => house[:id])
      house_menu
    elsif most_common_spelltype == "Spell"
      puts_super_fast FONT.write("HUFFLEPUFF", letter_spacing: 2)
      house = House.find_by name: "Hufflepuff"
      User.last.update(:house_id => house[:id])
      house_menu
    else
      puts_super_fast FONT.write("UNSORTABLE", letter_spacing: 2)
      puts_fast "You must be a Muggle. Perhaps we better try again..."
      #ADD METHOD TO CHANGE A SPELL IN BOOK
    end
  end

  def most_common_spelltype
    spell_names_array = spellbook_array.map{|spell| spell.spell_type}
    counted_hash = spell_names_array.uniq.map { |spell| [spell, spell_names_array.count(spell)] }.to_h
    counted_hash.key(counted_hash.values.max)
  end

  def detect_curse
    spellbook_array.detect{|spell| spell.spell_type == "Curse"}
  end

  def house_menu(house)
    options = ["Tell me about my house", "See classmates"]
    choice = PROMPT.select("What would you like to do next?", options)
    case choice
    when options[0]
      puts "TO BE MADE...."
    when options[1]
      puts "TO BE MADE...."
    end
  end

  def edit_spellbook

  end

end
