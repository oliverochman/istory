Given("I am on the sign up page") do
  visit new_user_registration_path
end

When("I enter {string} as {string}") do |field, value|
  fill_in field, with: value
end

When("I click {string}") do |element|
  within "#content" do
    click_link_or_button element
  end
end

Then("I should be on the landing page") do
  expect(current_path).to eq root_path
end
