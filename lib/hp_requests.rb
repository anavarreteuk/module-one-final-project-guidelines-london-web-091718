require 'rest-client'
require 'json'
require 'pry'
# Bundler.require

def show_random_charm
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  charm_rq = hpinfo.select{|spell| spell["type"] == "Charm"}.sample
end

def show_random_hex
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  hex_rq = hpinfo.select{|spell| spell["type"] == "Hex"}.sample
end

def show_random_curse
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  curse_rq = hpinfo.select{|spell| spell["type"] == "Curse"}.sample
end

def show_random_spell
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  spell_rq = hpinfo.select{|spell| spell["type"] == "Spell"}.sample
end

def show_random_enchantment
  url = 'https://www.potterapi.com/v1/spells?key=$2a$10$GyAEHpxPsTfoiKHANOUWiOviE8TjqBoYk99ZGZ4dAXwu65dMGerIi'
  response = RestClient.get(url)
  hpinfo = JSON.parse(response)
  enchantment_rq = hpinfo.select{|spell| spell["type"] == "Enchantment"}.sample
end

binding.pry

puts "EOF"
