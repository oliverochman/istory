Given("I am on the landing page") do
  visit '/'
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} element") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see {string} button") do |navbar_link|
  expect(page).to have_content navbar_link
end
