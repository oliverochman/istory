Given("the following story exists") do |table|
  table.hashes.each do |hash|
    @story = FactoryBot.create(:story, hash)
  end
end

Given("the following chapters exists") do |table|
  table.hashes.each do |hash|
    parent = Chapter.find_by(title: hash[:parent_chapter])
    FactoryBot.create(:chapter,
                      hash.merge!(story: @story,
                                  parent_chapter: parent)
                          .except!('parent_chapter'))
  end
end

Given("I visit the {string} story page") do |story_title|
  story = Story.find_by(title: story_title)
  visit story_path(story)
end

Then("I should be on the {string} chapter") do |title|
  chapter = Chapter.find_by(title: title)
  expect(current_path).to eq story_chapter_path(chapter.story, chapter)
end
