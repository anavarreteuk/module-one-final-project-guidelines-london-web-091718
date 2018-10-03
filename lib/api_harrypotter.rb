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
  puts "********************************************************************************************************"
  puts "Wooooosh! Here is a #{spell_type}, #{random_spell["spell"]}, which #{random_spell["effect"]}."
  puts "********************************************************************************************************"
  Spell.create(name: random_spell["spell"], spell_type: random_spell["type"], effect: random_spell["effect"], spellbook_id: nil)
end
