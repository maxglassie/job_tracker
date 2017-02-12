require "rails_helper"

RSpec.feature "User sees all categories" do
  scenario "a user sees all the categories" do
    category_1 = Category.create(name: "Finance")
    category_2 = Category.create(name: "Web Development")

    visit categories_path

    expect(page).to have_content("Finance")
    expect(page).to have_content("Web Development")

    expect(Category.count).to eq(2)
  end
end