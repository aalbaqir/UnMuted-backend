class NewsArticlesController < ApplicationController
    has_many :reactions
    has_many :comments 
end
