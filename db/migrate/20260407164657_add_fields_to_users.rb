class AddFieldsToUsers < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :username, :string
    add_column :users, :plan, :string, default: 'free'
    add_column :users, :slug, :string

    add_index :users, :username, unique:true 
    add_index :users, :slug, unique:true 
  end
end
