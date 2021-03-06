class Vote < ApplicationRecord
  belongs_to :article
  belongs_to :user

  scope :popular, lambda {
                    select('article_id, count(article_id)
    as count').group(:article_id).order('count desc').limit(1)
                  }
end
