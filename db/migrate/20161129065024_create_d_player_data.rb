class CreateDPlayerData < ActiveRecord::Migration[5.0]
  def change
    create_table :d_player_data do |t|
      t.float :PID
      t.string :FirstName
      t.string :LastName
      t.string :CLUB
      t.float :NUM
      t.string :DOB
      t.string :POS
      t.string :HomeTown
      t.string :HomeState
      t.string :Height
      t.string :School
      t.string :Twitter

      t.timestamps
    end
  end
end
