class User < ApplicationRecord
	has_many :articles, foreign_key: 'author_id', class_name: 'Article'
	has_one_attached :avatar
end
