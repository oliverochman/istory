class Story < ApplicationRecord
  has_many :chapters
  validates :title, :author, :intro, presence: true
end
