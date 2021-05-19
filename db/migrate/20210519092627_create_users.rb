class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.citext :email, null: false
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :city
      t.datetime :date_of_birth
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
