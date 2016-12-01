module ClubsHelper
    def cache_key_for_player_row(player)
        "player-#{player.id}"
    end
    
    def cache_key_for_players_table
 	    max_stale = @club.players.max_by(&:updated_at).updated_at
  		"players_table-#{@club.players.ids}-#{max_stale}" 
    end
end
