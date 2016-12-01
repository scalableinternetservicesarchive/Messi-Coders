class ClubsController < ApplicationController
    def show
        @club = Club.find(params[:id])
        # if stale?(@club)
        #     respond_to do |format|
        #         format.html
        #     end
        # end
    end
    
    def cache_key_for_player_row(player)
        "player-#{player.id}"
    end
    helper_method :cache_key_for_player_row
end
