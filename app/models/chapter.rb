class Chapter < ApplicationRecord
  belongs_to :story
  validates :chapter_id, :content, :choice_a, :choice_b, presence: true
end
