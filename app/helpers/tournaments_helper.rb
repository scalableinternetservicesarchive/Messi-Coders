module TournamentsHelper
    def cache_key_for_match_row(match)
       "match-#{match.id}-#{playlist.updated_at}"
    end
    
    def cache_key_for_matches_table
 	    max_stale = @tournaments.matches.max_by(&:updated_at).updated_at
  		"matches_table-#{@tournaments.matches.id}-#{max_stale}" 
    end
end
