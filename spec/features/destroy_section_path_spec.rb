require 'rails_helper'

describe 'destroy section path' do
  it 'will destroy the section' do
    section = Section.create(title: "Rails")
    visit section_path(section)
    click_on "Destroy #{section.title}"
    expect(page).to have_content('sections')
  end
end
