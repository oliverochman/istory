class Chapter < ApplicationRecord
  belongs_to :story

  belongs_to :parent_chapter, class_name: 'Chapter', optional: true, foreign_key: "chapter_id"
  has_many :child_chapters, class_name: 'Chapter', foreign_key: "chapter_id"
  #validates :chapter_id, :content, :choice_a, :choice_b, presence: true
end
