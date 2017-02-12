require "rails_helper"

RSpec.feature "User sees all categories" do
  scenario "a user sees all the categories" do
    category_1 = Category.create(name: "Finance")
    category_2 = Category.create(name: "Web Development")

    visit categories_path

    expect(page).to have_content("Finance")
    expect(page).to have_content("Web Development")

    expect(Category.count).to eq(2)
  #As a user, I visit the category index page
  #And I see a list of all categories
  #And I see that each category has a title
  #And I see that each category has a "Delete" button
  #And I see that each category has an "Edit" button
  #And I press the "Edit" button and I am redirected
  #to the edit category page
  #And I see the category title on that page
  end
end