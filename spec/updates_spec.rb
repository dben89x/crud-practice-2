require 'rails_helper'

feature 'Test user input' do

  scenario 'User inputs wrong input' do
    visit root_path
    click_on "New"
    fill_in "Status", with: ""
    fill_in "User", with: ""
    fill_in "Likes", with: ""
    click_on "Create"
    expect(page).to have_content("Status can't be blank")
    expect(page).to have_content("User can't be blank")
    expect(page).to have_content("Likes can't be blank")
  end

  scenario 'User creates with correct input' do
    visit new_update_path
    fill_in "Status", with: "Something"
    fill_in "User", with: "Someone"
    fill_in "Likes", with: "5"
    click_on "Create"

    expect(page).to have_content("Update has been successfully created")
    expect(page).to have_content("Something")
    expect(page).to have_content("Someone")
    expect(page).to have_content("5")
  end

end
