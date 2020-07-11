class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :firstName
      t.string :lastName
      t.string :email

      t.timestamps
    end
  end
end
