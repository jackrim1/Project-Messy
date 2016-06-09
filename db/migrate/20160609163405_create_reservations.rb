class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.boolean :breakfast
      t.string :breakfast_choice
      t.boolean :lunch
      t.string :lunch_choice
      t.boolean :dinner
      t.string :dinner_choice

      t.timestamps null: false
    end
  end
end
