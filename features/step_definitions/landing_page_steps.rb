Given("I visit the landing page") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} element") do |text|
  expect(page).to have_content text
end

Then("I should see {string} button") do |navbar_link|
  expect(page).to have_content navbar_link
end

Then("show me the page") do
  save_and_open_page
end
