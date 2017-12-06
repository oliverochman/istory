Given("the following story exists") do |table|
  table.hashes.each do |hash|
    Story.create!(hash)
    binding.pry
  end
end

Given("I visit the {string} story page") do |story_title|
  binding.pry
  story = Story.find_by(title: story_title)
  visit "/stories/#{story}"
end

