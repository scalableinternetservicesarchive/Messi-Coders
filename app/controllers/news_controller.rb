class NewsController < ApplicationController
    def index
        @news = News.all
    end
    
    def new
    end
    
    def create
        @news = News.new(news_params)
        @news.save
        redirect_to action: "index"
    end
    
    private
    def news_params
        params.require(:news).permit(:title, :subtext, :newslink, :imglink)
    end
end
