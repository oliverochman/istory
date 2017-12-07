Given("the following story exists") do |table|
  table.hashes.each do |hash|
    Story.create!(hash)
  end
end

Given("the following chapters exists") do |table|
  story = Story.find_by(title: "Starship")
  table.hashes.each do |hash|
    story.chapters.create!(hash)
  end
end


Given("I visit the {string} story page") do |story_title|
  story = Story.find_by(title: story_title)
  visit "/stories/#{story.id}"
end

Then("I should be on the first chapter page") do
  chapter = Chapter.find_by(chapter_id: "A")
  story = Story.find_by(title: "Starship")
  expect(current_path).to eq story_chapter_path(story, chapter)
end

Then("I should be on the {string} chapter") do |choice|
  chapter = Chapter.find_by(chapter_id: choice)
  story = Story.find_by(title: "Starship")
  expect(current_path).to eq story_chapter_path(story, chapter)
end
