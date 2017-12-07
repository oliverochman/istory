class AddChoicesToChapter < ActiveRecord::Migration[5.1]
  def change
    add_column :chapters, :choice_a, :string
    add_column :chapters, :choice_b, :string
    add_column :chapters, :choice_c, :string
  end
end
