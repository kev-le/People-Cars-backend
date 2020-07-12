class AddFKtoCars < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :cars, :people, column: :personId
  end
end
