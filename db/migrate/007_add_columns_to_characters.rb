class AddColumnsToCharacters < ActiveRecord::Migration[5.1]
  add_column :characters, :show_id, :integer
  add_column :characters, :catchphrase, :string
end
