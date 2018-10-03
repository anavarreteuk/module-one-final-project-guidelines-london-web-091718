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

  def spellbook_array
    user_spellbook = []
    user_spellbook << Spell.where(spellbook_id: Spellbook.last.id)
    flattened_user_spellbook = user_spellbook.flatten
    return flattened_user_spellbook
  end

  def save_or_ignore_spell
    if spellbook_array.count > 4
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
    rows = []
    rows << ["#{spellbook_array[0]["name"]}","#{spellbook_array[0]["effect"]}"]
    rows << ["#{spellbook_array[1]["name"]}","#{spellbook_array[1]["effect"]}"]
    rows << ["#{spellbook_array[2]["name"]}","#{spellbook_array[2]["effect"]}"]
    rows << ["#{spellbook_array[3]["name"]}","#{spellbook_array[3]["effect"]}"]
    rows << ["#{spellbook_array[4]["name"]}","#{spellbook_array[4]["effect"]}"]

    table = Terminal::Table.new :title => "#{Spellbook.last.name.upcase}'S SPELLBOOK", :headings => ['SPELL', 'EFFECT'], :rows => rows, :style => {:all_separators => true}
    table.style = {:width => 100, :padding_left => 2, :border_x => "=", :border_i => "+"}

    puts table
    sorting_offer

    # puts "********************************************************************************************************"
    # puts "<-------#{Spellbook.last.name.upcase}'S SPELLBOOK------->"
    # puts "********************************************************************************************************"
    # puts "1. #{spellbook_array[0]["name"]}: #{spellbook_array[0]["effect"]}"
    # puts "2. #{spellbook_array[1]["name"]}: #{spellbook_array[1]["effect"]}"
    # puts "3. #{spellbook_array[2]["name"]}: #{spellbook_array[2]["effect"]}"
    # puts "4. #{spellbook_array[3]["name"]}: #{spellbook_array[3]["effect"]}"
    # puts "5. #{spellbook_array[4]["name"]}: #{spellbook_array[4]["effect"]}"
    # sorting_offer
  end

  def sorting_offer
    puts "********************************************************************************************************"
    puts "Well done #{User.last.name}, #{Spellbook.last.name} is complete!"
    puts "Something I did not mention to you before...the Sorting Hat has become rather, well really quite old as of late."
    puts "We, proffesors at Hogwarts, have become increasingly dubious at some of the Sorting Hat's sorting choices."
    puts "We have decided that your Spell Book will provide valuable insight about your character and aid our ailing Hat in sorting you into the right house."
    puts "********************************************************************************************************"
    options = ["Go on then, sort me!", "No thanks - I'd rather not."]
    choice = PROMPT.select("This leads me to asking you this: would you like to be sorted into a Hogwarts House?", options)
    case choice
    when options[0]
      sorting
    when options[1]
      puts "Suit yourself."
      display_home_list
    end
  end

  def sorting
    binding.pry
    spellbook_array.max_by(&:spell_type)
    if !!detect_curse
      puts "AZKABAN"
    elsif most_common_spelltype == "Hex"
      puts "SLYTHERIN"
    elsif most_common_spelltype == "Charm"
      puts "RAVENCLAW"
    elsif most_common_spelltype == "Enchantment"
      puts "GRYFFINDOR"
    else
      puts "HUFFLEPUFF"
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




end
