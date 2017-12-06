Given("I visit the {string} story page") do |story|
  visit "/stories/#{story}"
end
