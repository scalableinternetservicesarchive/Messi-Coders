class RemoveDateFromNews < ActiveRecord::Migration[5.0]
  def change
    remove_column :news, :date, :date
  end
end
