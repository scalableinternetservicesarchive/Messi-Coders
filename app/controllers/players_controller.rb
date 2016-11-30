class PlayersController < ApplicationController
    helper_method :getFiles
    
    def show
        @player = Player.find(params[:id])
    end
end
