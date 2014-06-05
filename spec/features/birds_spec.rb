require 'spec_helper'

feature 'CRUD favorite birds' do
  scenario 'create a list of birds' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Bird'
    fill_in 'Name', with: 'Blue Jay'
    fill_in 'Color', with: 'Blue'
    click_on 'Create Bird'
    expect(page).to have_content 'Blue Jay'
    expect(page).to have_content 'Blue'
  end
end