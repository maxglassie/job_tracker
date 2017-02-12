require "rails_helper"

RSpec.feature "User edits a category" do
  scenario "user can edit an existing category" do
    category = Category.create(name: "Wizardry")

    visit edit_category_path(category)

    fill_in "Name", with: "Magery"

    click_on "Update"

    expect(current_path).to eq("/categories/#{category.id}")

    expect(page).to have_content("Magery")
  end
end