class CreateMagicSpells < ActiveRecord::Migration[5.0]
  def change
    create_table :magic_spells do |t|
      t.string :name
      t.string :type
      t.string :effect
      t.integer :spellbook_id
    end
  end
end
