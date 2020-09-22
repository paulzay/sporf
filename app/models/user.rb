class User < ApplicationRecord
  has_many :articles, foreign_key: 'author_id', class_name: 'Article', dependent: :destroy
  has_one_attached :avatar
  has_many :votes, dependent: :destroy

  validates_presence_of :name
end
