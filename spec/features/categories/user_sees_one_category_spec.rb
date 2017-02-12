require "rails_helper"

RSpec.describe "User can view a category" do
  scenario "user views a specific category" do
    # company = Company.create(name: "JP Morgan")
    category = Category.create(name: "Whatever")
    job_1 = category.jobs.create(title: "Analyst", description: "lots of hours, high pay", level_of_interest: 70, city: "New York")
    job_2 = category.jobs.create(title: "Associate", description: "top firm, great experience", level_of_interest: 80, city: "Washington")

    visit category_path(category)

    expect(page).to have_content("Whatever")
    expect(page).to have_content("Analyst")
    expect(page).to have_content(70)
    expect(page).to have_content("Washington")

    expect(page).to have_content("Associate")
    expect(page).to have_content(80)
    expect(page).to have_content("New York")
  end
end