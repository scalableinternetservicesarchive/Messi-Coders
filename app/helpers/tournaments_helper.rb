module TournamentsHelper
    def cache_key_for_match_row(match)
       "match-#{match.id}-#{match.updated_at}"
    end
    
    def cache_key_for_matches_table
 	    max_stale = @tournament.matches.max_by(&:updated_at).updated_at
  		"matches_table-#{@tournament.matches.ids}-#{max_stale}" 
    end
end
