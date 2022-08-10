class RemoveIconFromCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :categories, :icon, :string
  end
end
