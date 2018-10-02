class CreateSpellbooks < ActiveRecord::Migration[5.0]
  def change
    create_table :spellbooks do |t|
      t.string :name
    end
  end
end
