module NewsHelper
    def cache_key_for_news_row(news)
        "news-#{news.id}-#{news.updated_at}"
    end
    
    def cache_key_for_news_table
 	    max_stale = @news.max_by(&:updated_at).updated_at
  		"news_table-#{@news.ids}-#{max_stale}" 
    end
end
