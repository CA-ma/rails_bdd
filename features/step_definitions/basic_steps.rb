Given("the following articles exists") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

When("I visit the landing page") do
  visit root_path
end

When("I click {string}") do |text|
  click_link_or_button(text)
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Then("I should be on Learning Rails 5 page")
  pending #visit page
end

