class NewsArticlesController < ApplicationController
    # has_many :reactions
    # has_many :comments 

    skip_before_action :authorized


    def index
        news_articles = NewsArticle.all
        render json: news_articles
    end
end
