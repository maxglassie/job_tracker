require 'rails_helper'

RSpec.feature "User creates a new category" do
  context "user fills in form correctly" do
    scenario "user can create a new category" do

      visit new_category_path

      fill_in "category[name]", with: "Finance"
      click_button "Create"

      expect(current_path).to eq("/categories/#{Category.last.id}")
      expect(page).to have_content("Finance")
    end
  end
end
  # context
  #   #As a user if I submit a form for a category that already exists
  #   #And I am taken back to the page to create a new category
  #   #And I am show an error message "Category already exists"
  