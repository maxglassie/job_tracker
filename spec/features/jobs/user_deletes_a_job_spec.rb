require "rails_helper"

RSpec.feature "User deletes an existing job" do
  scenario "user can delete a job" do
    company = Company.create!(name: "Made In Space")
    job_1 = company.jobs.create!(title: "Materials Research Engineer", level_of_interest: 100, city: "Mountain View")

    visit company_path(company)
  
    # within(".job_#{job_1.id}") do
      click_on "Delete"
    # end

    expect(page).to have_content("#{job_1.name} successfully deleted!")
  end
end