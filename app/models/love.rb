class Love < ApplicationRecord
  belongs_to :news_article
  belongs_to :user
end
