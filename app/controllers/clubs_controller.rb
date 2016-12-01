class ClubsController < ApplicationController
    def show
        @club = Club.find(params[:id])
        if stale?(@club)
            respond_to do |format|
                format.html
            end
        end
    end
end
