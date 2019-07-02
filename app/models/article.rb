class Article < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
end

class ArticlesController < ApplicationController
    def index
      @articles = Article.all
    end
end
