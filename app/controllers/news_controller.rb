class NewsController < ApplicationController
    #http_basic_authenticate_with name: "Futbolista", password: "messicoder", except: [:index, :show]
    #commented out authentication for load testing

    def index
        @news = News.all
    end

    def show
        @news = News.find(params[:id])
        if stale?(@news)
            respond_to do |format|
                format.html
            end
        end
    end

    def new
        @news = News.new
    end

    def edit
        @news =  News.find(params[:id])
    end

    def create
        @news = News.new(news_params)
        @news.save
        redirect_to @news
    end

    def update
        @news = News.find(params[:id])
        @news.update(news_params)
        redirect_to @news
    end

    def destroy
        @news = News.find(params[:id])
        @news.destroy
        redirect_to news_index_path
    end

    private
    def news_params
        params.require(:news).permit(:title, :subtext, :newslink, :imglink)
    end
end
