class Site < ActiveRecord::Base
  has_many :categories, dependent: :destroy
  has_many :articles,   dependent: :destroy
end
