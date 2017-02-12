require "rails_helper"

RSpec.feature "User deletes an existing category" do
  scenario "users can delete a category" do
    category_1 = Category.create(name: "Finance")
    category_2 = Category.create(name: "Web Development")

    visit categories_path

    within(".category_#{category_1.id}") do
      click_link "Delete"
    end

    expect(page).to have_content("Finance was successfully deleted!")
  end
end