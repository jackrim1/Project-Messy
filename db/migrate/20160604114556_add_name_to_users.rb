class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :surname, :string
    add_column :users, :rank, :string
    add_column :users, :is_mess_staff, :boolean, default: false
  end
end
