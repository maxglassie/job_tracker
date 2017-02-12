require "rails_helper"

RSpec.feature "User edits an existing job" do
  scenario "user can edit an existing job" do
    company = Company.create!(name: "ESPN")
    job = company.jobs.create!(title: "Developer", level_of_interest: 70, city: "Denver")

    visit edit_company_job_path(company, job)

    save_and_open_page
    fill_in "job[title]", with: "Sports Caster"
    fill_in "job[description]", with: "Talking semi-intelligently"
    fill_in "job[level_of_interest]", with: 100
    fill_in "job[city]", with: "Los Angeles"

    click_on "Edit"

    expect(page).to have_content("Sports Caster")
    expect(page).to have_content("Talking semi-intelligently")
    expect(page).to have_content(100)
    expect(page).to have_content("Los Angeles")
  end
end