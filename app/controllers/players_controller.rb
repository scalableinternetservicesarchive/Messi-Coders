class PlayersController < ApplicationController
    helper_method :getFiles
    def index
        @players = Player.all
        if params[:search]
            @players = Player.search(params[:search])
        else
            @players = Player.all
        end
    end

    def show
        @player = Player.find(params[:id])
        if stale?(@player)
            respond_to do |format|
                format.html
            end
        end
    end
end
