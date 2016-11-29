class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.string :pid
      t.string :firstname
      t.string :lastname
      t.string :clubname
      t.string :number
      t.string :dob
      t.string :position
      t.string :hometown
      t.string :homestate
      t.string :height
      t.string :school
      t.string :twitter
      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end
