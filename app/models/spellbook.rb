class Spellbook < ActiveRecord::Base
  has_many :spells
  belongs_to :user
end
