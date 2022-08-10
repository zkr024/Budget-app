class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :first_name, :full_name
  end
end
