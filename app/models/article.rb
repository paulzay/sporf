class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_one_attached :header_image
  belongs_to :category
  has_many :votes, dependent: :destroy

  validates_presence_of :author, :text, :title, :category, :header_image

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
  has_many :taggings
  has_many :tags, through: :taggings
  def tag_list
    tags.collect(&:name).join(', ')
  end

  def tag_list=(tags_string)
    tag_names = tags_string.split(',').collect { |s| s.strip.downcase }.uniq
    new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
    self.tags = new_or_found_tags
  end
end
