require 'rails_helper'

RSpec.feature "User creates a new category" do
  context "user fills in form correctly" do
    scenario "user can create a new category" do
      #As a user, I visit the page to create a new category
      visit new_category_path
  
      #And I see a field in a form to enter the name
      #And I enter a title into the field
      fill_in "category[name]", with: "Finance"
      #And I hit the "Submit" button
      click_button "Create"
      
      #And I am taken to the category show page
      expect(current_path).to eq("/categories/#{Category.last.id}")
      #And I see the category title
      expect(page).to have_content("Finance")
    end
  end
end
  # context
  #   #As a user if I submit a form for a category that already exists
  #   #And I am taken back to the page to create a new category
  #   #And I am show an error message "Category already exists"
  