Given("the following story exists") do |table|
  table.hashes.each do |hash|
    Story.create!(hash)
  end
end

Given("I visit the {string} story page") do |story_title|
  story = Story.find_by(title: story_title)
  visit "/stories/#{story.id}"
end

Then("I should on the first chapter page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end
