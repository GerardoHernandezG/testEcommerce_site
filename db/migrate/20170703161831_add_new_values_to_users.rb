class AddNewValuesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :users, :permission_level, :integer, default: 1
  end
end
