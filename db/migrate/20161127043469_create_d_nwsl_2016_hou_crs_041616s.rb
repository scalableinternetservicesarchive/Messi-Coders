class CreateDNwsl2016HouCrs041616s < ActiveRecord::Migration[5.0]
  def change
    create_table :d_nwsl_2016_hou_crs_041616s do |t|
      t.string :Player
      t.string :Team
      t.float :GP
      t.float :MP
      t.float :GS
      t.float :Goals
      t.float :Shots
      t.float :Shots_per_90
      t.float :Shot_Accuracy
      t.float :Shot_GK_Stop
      t.float :Shot_Def_Stop
      t.float :Shot_Miss
      t.float :xG
      t.float :Shot_Pressed
      t.float :Pct_Shots_Pressed
      t.float :A6_Shots
      t.float :A18_Shots
      t.float :A3L_Shots
      t.float :A3C_Shots
      t.float :A3R_Shots
      t.float :Far_Shots
      t.float :Assists
      t.float :Key_Passes
      t.float :Key_Assists
      t.float :Second_Assists
      t.float :Assists_per_90
      t.float :Key_Passes_per_90
      t.float :Big_Chances
      t.float :Big_Chances_per_90
      t.float :BC_Scored
      t.float :BC_Conversion_Pct
      t.float :BC_SOG
      t.float :BC_Shot_Miss
      t.float :BC_Dispossess
      t.float :BC_Created
      t.float :BC_Lost
      t.float :Pass_Comp
      t.float :Pass_Att
      t.float :Pass_Att_per_90
      t.float :Pass_Comp_Pct
      t.float :opPass_Comp
      t.float :opPass_Att
      t.float :opPass_Att_per_90
      t.float :opPass_Comp_Pct
      t.float :opPPass_Comp
      t.float :opPPass_Att
      t.float :opPPass_Att_per_90
      t.float :opPPass_Comp_Pct
      t.float :Pct_opPass_Pressed
      t.float :rFreq_Pass_Fwd
      t.float :rFreq_Pass_Side
      t.float :rFreq_Pass_Back
      t.float :fwPass_Comp
      t.float :fwPass_Att
      t.float :fwPass_Att_per_90
      t.float :fwPass_Comp_Pct
      t.float :sPass_Comp
      t.float :sPass_Att
      t.float :sPass_Att_per_90
      t.float :sPass_Comp_Pct
      t.float :bPass_Comp
      t.float :bPass_Att
      t.float :bPass_Att_per_90
      t.float :bPass_Comp_Pct
      t.float :rFreq_A3_Passes
      t.float :rFreq_M3_Passes
      t.float :rFreq_D3_Passes
      t.float :A3Pass_Comp
      t.float :A3Pass_Att
      t.float :A3Pass_Att_per_90
      t.float :A3Pass_Comp_Pct
      t.float :M3Pass_Comp
      t.float :M3Pass_Att
      t.float :M3Pass_Att_per_90
      t.float :M3Pass_Comp_Pct
      t.float :D3Pass_Comp
      t.float :D3Pass_Att
      t.float :D3Pass_Att_per_90
      t.float :D3Pass_Comp_Pct
      t.float :rFreq_A3_opPasses
      t.float :rFreq_M3_opPasses
      t.float :rFreq_D3_opPasses
      t.float :A3opPass_Comp
      t.float :A3opPass_Att
      t.float :A3opPass_Att_per_90
      t.float :A3opPass_Comp_Pct
      t.float :M3opPass_Comp
      t.float :M3opPass_Att
      t.float :M3opPass_Att_per_90
      t.float :M3opPass_Comp_Pct
      t.float :D3opPass_Comp
      t.float :D3opPass_Att
      t.float :D3opPass_Att_per_90
      t.float :D3opPass_Comp_Pct
      t.float :Pass_Comp_D3toD3
      t.float :Pass_Comp_D3toM3
      t.float :Pass_Comp_D3toA3
      t.float :Pass_Comp_M3toD3
      t.float :Pass_Comp_M3toM3
      t.float :Pass_Comp_M3toA3
      t.float :Pass_Comp_A3toD3
      t.float :Pass_Comp_A3toM3
      t.float :Pass_Comp_A3toA3
      t.float :rFreq_opPass_Fwd
      t.float :rFreq_opPass_Side
      t.float :rFreq_opPass_Back
      t.float :fwopPass_Comp
      t.float :fwopPass_Att
      t.float :fwopPass_Att_per_90
      t.float :fwopPass_Comp_Pct
      t.float :sopPass_Comp
      t.float :sopPass_Att
      t.float :sopPass_Att_per_90
      t.float :sopPass_Comp_Pct
      t.float :bopPass_Comp
      t.float :bopPass_Att
      t.float :bopPass_Att_per_90
      t.float :bopPass_Comp_Pct
      t.float :Pct_Passes_Pressed
      t.float :PPass_Comp
      t.float :PPass_Att
      t.float :PPass_Att_per_90
      t.float :PPass_Comp_Pct
      t.float :rFreq_PPass_Fwd
      t.float :rFreq_PPass_Side
      t.float :rFreq_PPass_Back
      t.float :fwPPass_Comp
      t.float :fwPPass_Att
      t.float :fwPPass_Att_per_90
      t.float :fwPPass_Comp_Pct
      t.float :sPPass_Comp
      t.float :sPPass_Att
      t.float :sPPass_Att_per_90
      t.float :sPPass_Comp_Pct
      t.float :bPPass_Comp
      t.float :bPPass_Att
      t.float :bPPass_Att_per_90
      t.float :bPPass_Comp_Pct
      t.float :Cross_Comp
      t.float :Cross_Att
      t.float :Cross_Att_per_90
      t.float :Cross_Att_per_opPass
      t.float :Cross_Comp_Pct
      t.float :Corner_Crosses
      t.float :Deep_Crosses
      t.float :Launch_Comp
      t.float :Launch_Att
      t.float :Launch_Att_per_90
      t.float :Launch_Att_per_Pass
      t.float :Launch_Comp_Pct
      t.float :Through_Comp
      t.float :Through_Att
      t.float :Through_Att_per_90
      t.float :Through_Att_per_Pass
      t.float :Through_Att_per_opPass
      t.float :Through_Comp_Pct
      t.float :Throw_In_Comp
      t.float :Throw_In_Att
      t.float :Throw_In_Att_per_90
      t.float :Throw_In_Att_per_Pass
      t.float :Throw_In_Comp_Pct
      t.float :Corner_Kicks_Completed
      t.float :Corner_Kicks_Taken
      t.float :CK_Comp_Pct
      t.float :CK_Assist
      t.float :CK_Key_Pass
      t.float :FK_Pass_Comp
      t.float :FK_Pass_Att
      t.float :FK_Pass_Comp_Pct
      t.float :FK_Assist
      t.float :FK_Key_Pass
      t.float :FK_Shot
      t.float :FK_Scored
      t.float :Free_Kicks_Taken
      t.float :Take_Ons
      t.float :Take_Ons_per_90
      t.float :TO_Won
      t.float :TO_Lost
      t.float :TO_Win_Pct
      t.float :Dispossessed
      t.float :Lost_Touches
      t.float :All_Possessions_Disrupted
      t.float :Poss_Disrupted_per_90
      t.float :Aerial_Duels
      t.float :Aerial_Duels_per_90
      t.float :AD_Won
      t.float :AD_Lost
      t.float :AD_Win_Pct
      t.float :Tackles
      t.float :Dispossesses
      t.float :All_Opp_Poss_Disrupted
      t.float :Opp_Poss_Disrupted_per_90
      t.float :Dribbled
      t.float :Dribbled_per_90
      t.float :Press_Opp
      t.float :Challenge_Opp
      t.float :Recoveries
      t.float :Recoveries_per_90
      t.float :Def_Recoveries
      t.float :Poss_Recoveries
      t.float :Interceptions
      t.float :Int_per_90
      t.float :Int_per_OP_Pass
      t.float :Blocks
      t.float :Blocks_per_90
      t.float :Clearances
      t.float :Clearances_per_90
      t.float :Ball_Shields
      t.float :Offsides
      t.float :Fouls_Won
      t.float :Fouls_Conceded
      t.float :Yellow_Cards
      t.float :Red_Cards
      t.float :Penalties_Won
      t.float :Penalties_Conceded
      t.float :E_to_Goals
      t.float :OG
      t.float :E_to_Big_Chances
      t.float :BC_Stopped
      t.float :Saves
      t.float :Goals_Allowed
      t.float :GK_SOG_Faced
      t.float :GperSOG
      t.float :BC_SOG_Faced
      t.float :BC_Saves
      t.float :BC_Goals_Allowed
      t.float :GperBCSOG
      t.float :High_Balls_Faced
      t.float :HB_Won
      t.float :HB_Lost
      t.float :HB_Win_Pct
      t.float :HB_Caught
      t.float :HB_Punched
      t.float :HB_Parried
      t.float :HB_Collected
      t.float :HB_Fouls_Won
      t.float :Crosses_Faced
      t.float :Crosses_Won
      t.float :Crosses_Lost
      t.float :Corner_Kicks_Faced
      t.float :CKs_Won
      t.float :CKs_Lost
      t.float :Free_Kicks_Faced
      t.float :FKs_Won
      t.float :FKs_Lost
      t.float :Smothers_Won
      t.float :Smothers_Lost
      t.float :GK_Overall_Pass_Comp
      t.float :GK_Overall_Pass_Att
      t.float :GK_Overall_Pass_Comp_Pct
      t.float :GK_Throw_Comp
      t.float :GK_Throw_Att
      t.float :GK_Throw_Comp_Pct
      t.float :GK_Drop_Kick_Comp
      t.float :GK_Drop_Kick_Att
      t.float :GK_Drop_Kick_Comp_Pct
      t.float :GKFK_Comp
      t.float :GKFK_Att
      t.float :GKFK_Comp_Pct

      t.timestamps
    end
  end
end
