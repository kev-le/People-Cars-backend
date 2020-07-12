class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :cars, :person_id, :personId
  end
end
