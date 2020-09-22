class Category < ApplicationRecord
  has_many :articles

  has_one :most_recent_article, lambda {
    merge(Article.most_recent_by_category)
  }, class_name: 'Article', inverse_of: :category

  validates_presence_of :name
end
