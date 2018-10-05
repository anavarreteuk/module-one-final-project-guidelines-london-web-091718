include Styling

class CLI

  def welcome_first
      puts_super_fast <<-EOF
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMWWWWWWWMMKxdoookNMMMMMMMMMMMMMMMWWMMMMMMMWNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMWO:,,,;xWMK,   .kWMMMMWWMMMMMMWKd:kWKKMMXk:'dNXKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMK,    dMMN:   ,KMMMXkc;oKWMMN0:  ';.'kKo.  .:..dNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMK,    dMMN:   ,KMNd.  ''.:OWMMx. ;c. .O0'  'l'  oWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMK,    dMMN:   ,KMNd..xNd. '0MMx. dKc;dX0'  :Xd;oOKKXKXWMWkc:dXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMK,    dMMWc   'kOkkdkNWx. .OMMx. dNXWMM0'  :XNWMWk,..lXM0, .kWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMXOK0,    dMMN:    ,;.,lcoKd  .OMMx. dMMMMM0'  ;XMMMMNl  ;XK; .kWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMWd'kK,    oWNk'   .kWO,  ;Xd  .OMMx. dMMMMM0'  ,KMMMMMK, .c, 'OWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMXdlc.    .::;.   .kMN:  ,Kd  .kWMx. lWMMMM0'  '0MMMMMWd.   ,0MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMNk'    ,xKNc   .xMMO.  :;  .lXNo. :XMMMWk'  'OMMMMMM0'  :KMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMX;    lWMN:   .xMMWx'.:,.'xNMWKOO0NMMMWKo;,;lONMMMXc  cXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMX;    lWMN:   .xMMMWXXNKkKNNWMMMMMMMMMWk...,lk0KKO; .oNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMX;    lWMN:   .xMMMMMMx,''''dXOddKMMMMMNOolc::;,'..'kWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMWk.    ;KMN:   .xMMMMMMd     :d:,.'kWMMMMMMMMMWXK000XMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMW0xxxddx0N0;   .oNMMMMMO.    cNWk. .lXMMMMMMMMMMMMMMMMKd0MMMMMKd0MMMMMMMMMMMMMMW00WMMMMMMMMMM
      MMMMMMMMMMMMMMMMWX0O00OKNMMMMMX;    lWMk.   :XMMMMMMMMMMMMMXo..kMMMXd..xMMMMMMMMMMMMXx;.:kodXMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWc    lWMk.   ;XMMMMMMMMMMN0o.  .:dkd'   ;dKMMMMWWMMMWXl. .,  ;KMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd    lWM0'   :NMMMNX0kKWMNkd'   ;ooo'   ,o0MNOo::dKWMMk. :0: .dWMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKo.   cWMX;   oWKxc;;:;;xNWMN:  .kMMWl  .xMNx; ,o' .dNMk. :XOxKWMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMXc.    :kxd.  .OO.  cKNk..'xWN:  .kMMMl  .xWo   cNx. .kMk. :NMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMo     c0c..;o0Wd   oWW0'  ;XN:  .kMMMl  .xNc   l0d;..xMk. :NMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMk.    cWWXXWMMWc   lNW0'  ;XN:  .kMMMl  .xX;   lNNNKKWMk. ;XMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMX;    lWMMMMMMWc   lNW0,  ,KN:  .OMMMl  .xX;   cWWKNMMMk. '0MMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx.  .oKWMMMMMMWl   lNW0'  .ON:  '0MMMl  .kWd.  :N0;lNMWkc;l0WMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMWo   .OMMMMMMMMMKo:'oNWO.  :KN:  ,KMMMo  '0MW0c..lc;OWMMMMMMMMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO.  .OMMMMMMMMMMMW0dool:oONMWc  ;XMMMo  '0MWWWXxokXMMMMMMMMMMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMN:  .OMMMMMMMMMMMMMWNNNMMMMMM0c,;kWMMKl,':k0xd0WMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWo ,kXMMMMMMMMMMMMMMMMMMMMMMMMMWXKNMMMMWXOkO0KNMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMO.cWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNcoWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWOOMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
      MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM'
      EOF
  end

  def welcome
    puts_super_fast FONT.write(" ALOHOMORA !", letter_spacing: 3)
    puts_super_fast PASTEL.yellow("********************************************************************************************************")
    puts ""
    puts_fast "Hello there!"
    puts ""
    puts_fast "My name is Professor Flitwick and am here to welcome you to Hogwarts and help you settle in."
    puts ""
    puts_fast "To begin, would you please tell me your name?"
    puts ""
    puts_super_fast PASTEL.yellow("********************************************************************************************************")
  end

  def get_user_name_and_create
    puts ""
    user_name = gets.chomp
    User.create(name: user_name)
    puts ""
    puts_fast "Tremendous name, #{User.last.name}! It is my pleasure to finally meet you at last."
    puts ""
    puts_super_fast PASTEL.yellow("********************************************************************************************************")
  end

  def original_menu
    options = ["Character Dictionary: search and learn", "Create Spellbook: explore and add spells to your spellbook with a twist at the end...", "Quit"]
    puts ""
    choice = PROMPT.select("Select one of the following to begin your magical journey...", options)
    case choice
    when options[0]
      character_dictionary
    when options[1]
      get_spellbook_name
    when options[2]
      goodbye
    end
    puts ""
  end

  def get_spellbook_name
    puts ""
    puts_fast "Your Spellbook will contain five different spells of your choice."
    puts ""
    puts_fast "What title would you like to give it?"
    puts ""
    sb_name = gets.chomp
    Spellbook.create(name: sb_name, user_id: User.last.id)
    puts ""
    puts_fast "Very creative. Let's begin filling #{Spellbook.last.name} with some magic."
    puts ""
    puts_super_fast PASTEL.yellow("********************************************************************************************************")
    begin_spellbook
  end

  def begin_spellbook
    choose_between_5_spell_types
    save_or_ignore_spell
  end

  def choose_between_5_spell_types
    choice = PROMPT.select("Pick between one of these 5 spell types to receive a random spell suggestion:", %w(Spell Charm Hex Curse Enchantment))
    puts ""
    show_random_spell(choice)
  end

  def spellbook_array
    user_spellbook = []
    user_spellbook << Spell.where(spellbook_id: Spellbook.last.id)
    flattened_user_spellbook = user_spellbook.flatten
    flattened_user_spellbook
  end

  def save_or_ignore_spell
    if spellbook_array.count > 4
      puts_fast "You have reached the limit of 5 spells. Let's take a look at your choices."
      puts ""
      which_user_spellbook_and_path?
    else
      puts ""
      choice = PROMPT.select("Would you like to save #{Spell.last.name} to your spellbook?", %w(Yes No))
      case choice
      when "Yes"
        puts ""
        sb_id = Spellbook.last.id
        Spell.last.update(:spellbook_id => sb_id)
        puts_fast flitwick_comments
        puts ""
        puts_fast "#{Spell.last.name} has been added to #{Spellbook.last.name}, #{User.last.name}."
        puts ""
        puts_fast "Now choose another!"
        puts ""
        begin_spellbook
      when "No"
        puts ""
        puts_fast "If that is your wish, then let us try another."
        second_save_or_ignore_spell
      end
    end
  end

  def flitwick_comments
    comments = ["Interesting. Very interesting...", "Hmmm. How very peculiar.", "Your choice is very unique.", "I wonder what made you choose that.", "A Witch's or a Wizard's choice of spells can reveal the innermost workings of their soul."]
    comment = comments.sample
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
    table.style = {:width => 110, :padding_left => 2, :border_x => "=", :border_i => "+"}
    puts PASTEL.bright_cyan(table)

    # sorting_offer
  end

  def which_user_spellbook_and_path?
    if !!User.last.house_id
      view_spellbook
    else
      view_spellbook
      sorting_offer
    end
  end

  def which_menu?
    if !!User.last.house_id
      secret_menu
    else
      original_menu
    end
  end

  def sorting_offer
    puts_super_fast PASTEL.yellow("********************************************************************************************************")
    puts ""
    puts_fast "Well done #{User.last.name}, your book, #{Spellbook.last.name}, is complete!"
    puts ""
    puts_fast "Something I did not mention to you before...the Sorting Hat has become rather, well really quite old as of late."
    puts ""
    puts_fast "We professors at Hogwarts, have become increasingly concerned at some of the Sorting Hat's sorting choices."
    puts ""
    puts_fast "Your Spellbook can give us valuable insight about your character and personality based on your choices of spells."
    puts ""
    puts_fast "Hence, it has been decided by Dumbledore that with your consent, we may use your book to assist the Sorting Hat in"
    puts ""
    puts_fast "placing you into the right house."
    puts ""
    puts_super_fast PASTEL.yellow("********************************************************************************************************")
    puts ""
    options = ["Go on then, sort me!", "No thanks - I'd rather not."]
    choice = PROMPT.select("Would you like to be sorted into a Hogwarts House?", options)
    case choice
    when options[0]
      sorting
    when options[1]
      puts_fast "Suit yourself. You will miss out on the secret menu if you do..."
      original_menu
    end
  end

  def sorting
    puts ""
    puts ""
    puts_slow PASTEL.yellow("* * * * * * * * S O R T I N G * * * * * * * *")
    puts ""
    puts ""
    # bar = ProgressBar.new(100, :bar, :elapsed)
    if !!detect_curse
      puts ""
      puts_fast "Your desire to fill your book with at least one curse is truly frightening."
      puts ""
      puts_fast "On behalf of the Wizarding community, it is with regret that you are hereby expelled, goodbye."
      puts ""
      puts_super_fast FONT.write("FINITE", letter_spacing: 1)
      puts_super_fast FONT.write("INCANTATEM !", letter_spacing: 1)
      puts ""
      puts_slow "WAIT!"
      puts ""
      puts_slow "The Sorting Hat has changed its mind. Better be....."
      puts ""
      puts_super_fast FONT.write("SLYTHERIN", letter_spacing: 2)
      house = House.find_by name: "Slytherin"
      User.last.update(:house_id => house[:id])
      house_menu
    else
      puts_super_fast FONT.write(most_common_spelltype, letter_spacing: 2)
      house = House.find_by name: most_common_spelltype
      User.last.update(:house_id => house[:id])
      house_menu
    end
  end

  def most_common_spelltype
    sorting = {"Hex" => "Slytherin", "Spell" => "Gryffindor", "Charm" => "Ravenclaw", "Enchantment" => "Hufflepuff"}
    spell_names_array = spellbook_array.map{|spell| spell.spell_type}
    counted_hash = spell_names_array.uniq.map { |spell| [spell, spell_names_array.count(spell)] }.to_h
    spell = counted_hash.key(counted_hash.values.max)
    sorting[spell]
  end

  def detect_curse
    spellbook_array.detect{|spell| spell.spell_type == "Curse"}
  end

  def house_menu
    puts ""
    options = ["Tell me more about my house", "Quit"]
    choice = PROMPT.select("What would you like to do next?", options)
    case choice
    when options[0]
      house_info
    when options[1]
      goodbye
    end
  end

  def user_classmates
    user_house_id = User.last.house_id
    house = House.where(id: user_house_id)
    puts ""
    puts_fast "Including yourself, the following users are also in #{house[0].name}:"
    classmates_array
    which_menu?
  end

  def classmates_array
    user_classmates = []
    user_classmates << User.where(house_id: User.last.house_id)
    flattened_user_classmates = user_classmates.flatten
    flattened_user_classmates.map do |classmate|
      puts ""
      puts_slow classmate.name
    end
  end

  def house_array
    house_array = House.where(id: [1,2,3,4])
  end

  def house_info
    puts ""
    user_house_id = User.last.house_id
    house = House.find_by id: user_house_id
    rows = []
    rows << ["Mascot","#{house.mascot.capitalize}"]
    rows << ["Head of House","#{house.head_of_house}"]
    rows << ["House Ghost","#{house.house_ghost}"]
    rows << ["Founder","#{house.founder}"]
    rows << ["Values","#{house.values}"]
    rows << ["House Colours","#{house.colours}"]

    table = Terminal::Table.new :title => "#{house.name.upcase}", :headings => ['INFORMATION', 'DETAILS'], :rows => rows, :style => {:all_separators => true}
    table.style = {:width => 100, :padding_left => 2, :border_x => "=", :border_i => "+"}

    colourfy_table(table)
    secret_menu_or_quit
  end

  def colourfy_table(table)
    user_house_id = User.last.house_id
    house = House.find_by id: user_house_id
    if house.name == "Gryffindor"
      puts PASTEL.bright_red(table)
    elsif house.name == "Ravenclaw"
      puts PASTEL.bright_blue(table)
    elsif house.name == "Slytherin"
      puts PASTEL.bright_green(table)
    elsif house.name == "Hufflepuff"
      puts PASTEL.bright_yellow(table)
    end
  end

  # def intro_to_secret_menu_or_secret_menu
  #   intro_to_secret_menu
  #   secret_menu_or_quit
  # end

  # def intro_to_secret_menu
  #   puts ""
  #   options = ["Show me more! Take me to the secret menu!", "Quit"]
  #   choice = PROMPT.select("Would you like to explore more of Hogwarts now that you've been sorted or leave?", options)
  #   case choice
  #   when options[0]
  #     which_menu?
  #   when options[1]
  #     goodbye
  #   end
  # end

  def secret_menu
    puts ""
    options = ["View Character Dictionary", "View Spellbook", "View House", "View Classmates", "Quit"]
    choice = PROMPT.select("Welcome to Hogwarts. Feel free to explore the following:", options)
    case choice
    when options[0]
      character_dictionary
    when options[1]
      which_user_spellbook_and_path?
      secret_menu_or_quit
    when options[2]
      house_info
      secret_menu_or_quit
    when options[3]
      user_classmates
    when options[4]
      goodbye
    end
  end

  def goodbye
    puts ""
    puts PASTEL.yellow("********************************************************************************************************")
    puts ""
    puts_super_fast FONT.write("FINITE", letter_spacing: 1)
    puts_super_fast FONT.write("INCANTATEM !", letter_spacing: 1)
    puts_super_fast FONT.write("Goodbye.", letter_spacing: 1)
    puts ""
    puts PASTEL.yellow("********************************************************************************************************")
    puts PASTEL.yellow("********************************************************************************************************")
    puts PASTEL.yellow("********************************************************************************************************")
    puts PASTEL.yellow("********************************************************************************************************")
    puts PASTEL.yellow("********************************************************************************************************")
    exec 'killall afplay'
    exit
  end

  def character_dictionary
    puts ""
    options = ["View List of Characters", "Find Random Character", "Main Menu", "Quit"]
    choice = PROMPT.select("What would you like to do?", options)
    puts ""
    case choice
    when options[0]
      character_list
    when options[1]
      random_character
    when options [2]
      which_menu?
    when options [3]
      goodbye
    end
  end

  def character_list
      puts ""
      puts_super_fast "********************************************************************************************************"
      puts ""
      puts_fast "Great choice, #{User.last.name}. Here is a list of all characters:"
      characters_array = show_character_list_api
      rows= characters_array.each_slice(4).to_a
      table = Terminal::Table.new :title => "---------------------************     CHARACTER LIST    ***********-----------------------", :rows => rows, :style => {:all_separators => true}
      puts ""
      puts table
      puts ""
      more_character_info?
  end

  def more_character_info?
    options = ["Tell me more", "Take me back", "Main Menu", "Quit"]
    choice = PROMPT.select("Would you like know more about a character?", options)
    case choice
    when options[0]
      puts ""
      puts_fast "Excellent. You are a curious student indeed! Please type in the character's name."
      puts ""
      input = gets.chomp
      rows = character_in_detail(input).to_a.sort
      rows.shift
      rows.shift
      table = Terminal::Table.new :title => "------------********   CHARACTER DETAIL   ******------------",:rows => rows, :style => {:all_separators => true}
      puts ""
      puts table
      puts ""
      which_menu?
    when options[1]
      character_dictionary
    when options[2]
      which_menu?
    when options[3]
      goodbye
    end
  end

  def random_character
    show_random_character
    puts ""
    more_character_info?
  end

  def secret_menu_or_quit
    puts ""
    options = ["Main Menu", "Quit"]
    choice = PROMPT.select("Would you like to explore more of the unlocked menu or bid us farewell?", options)
    case choice
    when options[0]
      which_menu?
    when options[1]
      goodbye
    end
  end

end
