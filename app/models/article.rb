class Article < ActiveRecord::Base
  belongs_to :category

  scope :published, -> { where('published_at <= ?', Time.current) }
end
