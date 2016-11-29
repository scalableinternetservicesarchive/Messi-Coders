class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
      t.string :tournamentname
      t.string :team1
      t.string :team2
      t.string :date
      t.string :score
      t.string :city
      t.string :state
      t.string :gameid
      t.references :tournament, foreign_key: true

      t.timestamps
    end
  end
end
