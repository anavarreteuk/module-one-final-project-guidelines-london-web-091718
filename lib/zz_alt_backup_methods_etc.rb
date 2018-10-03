

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




# def show_random_charm
#   url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
#   response = RestClient.get(url)
#   hpinfo = JSON.parse(response)
#   charm_rq = hpinfo.select{|spell| spell["type"] == "Charm"}.sample
#   puts "Wooooosh! Here is a charm, #{charm_rq["spell"]}, which #{charm_rq["effect"]}."
# end
# #
# def show_random_hex
#   url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
#   response = RestClient.get(url)
#   hpinfo = JSON.parse(response)
#   hex_rq = hpinfo.select{|spell| spell["type"] == "Hex"}.sample
#   puts "Wooooosh! Here is a hex, #{hex_rq["spell"]}, which #{hex_rq["effect"]}."
# end
#
# def show_random_curse
#   url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
#   response = RestClient.get(url)
#   hpinfo = JSON.parse(response)
#   curse_rq = hpinfo.select{|spell| spell["type"] == "Curse"}.sample
#   puts "Wooooosh! Here is a curse, #{curse_rq["spell"]}, which #{curse_rq["effect"]}."
# end
#
# def show_random_spell
#   url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
#   response = RestClient.get(url)
#   hpinfo = JSON.parse(response)
#   spell_rq = hpinfo.select{|spell| spell["type"] == "Spell"}.sample
#   puts "Wooooosh! Here is a spell, #{spell_rq["spell"]}, which #{spell_rq["effect"]}."
# end
#
# def show_random_enchantment
#   url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
#   response = RestClient.get(url)
#   hpinfo = JSON.parse(response)
#   enchantment_rq = hpinfo.select{|spell| spell["type"] == "Enchantment"}.sample
#   puts "Wooooosh! Here is an enchantment, #{enchantment_rq["spell"]}, which #{enchantment_rq["effect"]}."
# end
