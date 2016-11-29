class CreateDMatchData < ActiveRecord::Migration[5.0]
  def change
    create_table :d_match_data do |t|
      t.string :TournamentName
      t.string :Team1
      t.string :Team2
      t.string :Date
      t.string :Score
      t.string :City
      t.string :StateCountry
      t.string :GameId

      t.timestamps
    end
  end
end
