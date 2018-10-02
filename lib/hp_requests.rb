require 'rest-client'
require 'active_record'
require 'json'
require 'pry'
require_relative '../app/models/spell.rb'

# Bundler.require

def show_random_charm
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  charm_rq = hpinfo.select{|spell| spell["type"] == "Charm"}.sample
  puts "Wooooosh! Here is a charm, #{charm_rq["spell"]}, which #{charm_rq["effect"]}."
end

def show_random_hex
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  hex_rq = hpinfo.select{|spell| spell["type"] == "Hex"}.sample
  puts "Wooooosh! Here is a hex, #{hex_rq["spell"]}, which #{hex_rq["effect"]}."
end

def show_random_curse
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  curse_rq = hpinfo.select{|spell| spell["type"] == "Curse"}.sample
  puts "Wooooosh! Here is a curse, #{curse_rq["spell"]}, which #{curse_rq["effect"]}."
end

def show_random_spell
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  spell_rq = hpinfo.select{|spell| spell["type"] == "Spell"}.sample
  puts "Wooooosh! Here is a spell, #{spell_rq["spell"]}, which #{spell_rq["effect"]}."
end

def show_random_enchantment
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  enchantment_rq = hpinfo.select{|spell| spell["type"] == "Enchantment"}.sample
  puts "Wooooosh! Here is an enchantment, #{enchantment_rq["spell"]}, which #{enchantment_rq["effect"]}."
end


# ollie = Spell.create(name: olliespell["spell"], type: olliespell["type"], effect: olliespell["effect"])

# binding.pry
