class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_one_attached :header_image
  belongs_to :category
  has_many :votes, dependent: :destroy

  scope :most_recent_by_category, lambda {
    from(
      <<~SQL
        (
          SELECT articles.*
          FROM articles JOIN (
             SELECT category_id, max(created_at) AS created_at
             FROM articles
             GROUP BY category_id
          ) latest_by_category
          ON articles.created_at = latest_by_category.created_at
          AND articles.category_id = latest_by_category.category_id
        ) articles
      SQL
    )
  }
end
