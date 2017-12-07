class Chapter < ApplicationRecord
  belongs_to :story

  belongs_to :parent_chapter, class_name: 'Chapter', optional: true, foreign_key: 'chapter_id'
  has_many :child_chapters, class_name: 'Chapter', foreign_key: 'chapter_id'

  validates_presence_of :content, :title
end
