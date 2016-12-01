class TournamentsController < ApplicationController
    def show
        @tournament = Tournament.find(params[:id])
        if stale?(@tournament)
            respond_to do |format|
                format.html
            end
        end
    end
end
