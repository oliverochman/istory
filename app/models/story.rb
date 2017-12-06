class Story < ApplicationRecord
  validates :title, :author, :intro, presence: true
end
