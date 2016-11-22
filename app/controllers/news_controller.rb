class NewsController < ApplicationController
    def index
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
        params.require(:news).permit(:title, :subtext, :date, :imglink)
    end
end
