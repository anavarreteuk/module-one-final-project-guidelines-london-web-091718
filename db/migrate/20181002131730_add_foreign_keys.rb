class AddForeignKeys < ActiveRecord::Migration[5.0]
  def change
    # add_column :spells, :spellbook_id, :integer
    add_foreign_key :spellbooks, :spells
    add_foreign_key :users, :spellbooks
  end
end
