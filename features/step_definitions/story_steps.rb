Given("the following story exists") do |table|
  table.hashes.each do |hash|
    Story.create!(hash)
  end
end

Given("I visit the {string} story page") do |story_title|
  story = Story.find_by(title: story_title)
  visit "/stories/#{story.id}"
end
