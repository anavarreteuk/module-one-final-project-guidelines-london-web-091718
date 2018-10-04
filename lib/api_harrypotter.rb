require 'rest-client'
require 'active_record'
require 'json'
require 'pry'
require_relative '../app/models/spell.rb'

# Bundler.require

def show_random_spell(spell_type)
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  random_spell = hpinfo.select{|spell_hash| spell_hash["type"] == spell_type}.sample
  puts_super_fast PASTEL.yellow("********************************************************************************************************")
  puts ""
  puts_fast "Wooooosh! Here is a #{spell_type}, #{random_spell["spell"]}, which #{random_spell["effect"]}."
  puts ""
  puts_super_fast PASTEL.yellow("********************************************************************************************************")
  Spell.create(name: random_spell["spell"], spell_type: random_spell["type"], effect: random_spell["effect"], spellbook_id: nil)
end

def get_houses
  url = 'https://www.potterapi.com/v1/houses?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  hpinfo.each{|house| House.create(name: house["name"], mascot: house["mascot"], head_of_house: house["headOfHouse"], house_ghost: house["houseGhost"], founder: house["founder"], values: house["values"], colours: house["colors"])}
end

def show_character_list_api
  url = 'https://www.potterapi.com/v1/characters?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  sfacinfo = JSON.parse(response)
  characters = sfacinfo.map{|character_hash| character_hash["name"]}
  characters
end

def character_in_detail(input)
  url = 'https://www.potterapi.com/v1/characters?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  cid = JSON.parse(response)
  character_details = cid.find {|character_hash| character_hash["name"] == input}
  character_details
end

def show_random_character
  url = 'https://www.potterapi.com/v1/characters?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  random_char = hpinfo.select{|character_hash| character_hash}.sample
  puts_super_fast PASTEL.yellow("********************************************************************************************************")
  puts ""
  puts_slow PASTEL.yellow("* * * * * * * F I N D I N G * * * * * * *")
  puts ""
  puts_fast "We got one!"
  puts ""
  puts_fast "How about #{random_char["name"]}! #{random_char["name"]} is a #{random_char["species"]}. Wonderful!"
  puts ""
  puts_super_fast PASTEL.yellow("********************************************************************************************************")
end
