class Chapter < ApplicationRecord
  belongs_to :story
  validates :chapter_id, :content, presence: true
end
