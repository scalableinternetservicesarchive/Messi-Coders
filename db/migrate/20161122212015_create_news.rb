class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :title
      t.text :subtext
      t.date :date
      t.text :imglink

      t.timestamps
    end
  end
end
