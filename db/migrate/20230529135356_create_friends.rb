class CreateFriends < ActiveRecord::Migration[7.0]
  def change
    create_table :friends do |t|
      t.string :location
      t.integer :price
      t.string :name
      t.integer :age
      t.string :gender
      t.string :language
      t.text :description

      t.timestamps
    end
  end
end
