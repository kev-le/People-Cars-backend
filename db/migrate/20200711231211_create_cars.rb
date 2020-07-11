class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.belongs_to :person
      t.integer :year
      t.string :make
      t.string :model
      t.string :price

      t.timestamps
    end
  end
end
