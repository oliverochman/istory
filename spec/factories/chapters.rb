FactoryBot.define do
  factory :chapter do
    content "MyText"
    chapter_id "MyString"
    choice_a "Something"
    choice_b "Something else"
    story nil
  end
end
