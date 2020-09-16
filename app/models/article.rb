class Article < ApplicationRecord
	belongs_to :author, class_name: 'User'
	has_one_attached :header_image
	belongs_to :category
	acts_as_votable
end
