class TournamentsController < ApplicationController
    def show
        @tournament = Tournament.find(params[:id])
        # if stale?(@tournament)
        #     respond_to do |format|
        #         format.html
        #     end
        # end
    end
    
    def cache_key_for_match_row(match)
       "match-#{match.id}"
    end
    helper_method :cache_key_for_match_row
end
