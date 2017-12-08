class CreateChapters < ActiveRecord::Migration[5.1]
  def change
    create_table :chapters do |t|
      t.text :content
      t.string :chapter_id
      t.references :story, foreign_key: true

      t.timestamps
    end
  end
end
