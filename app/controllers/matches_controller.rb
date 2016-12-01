class MatchesController < ApplicationController
    def show
        @match = Match.find(params[:id])
        if stale?(@match)
            respond_to do |format|
                format.html
            end
        end
    end
end
