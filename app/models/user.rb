class User < ActiveRecord::Base
  has_one :house
  has_one :spellbook
  has_many :spells, through: :spellbook
end
