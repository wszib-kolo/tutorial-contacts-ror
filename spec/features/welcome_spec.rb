require "spec_helper"

describe 'welcome page' do
  it 'welcomes new users' do
    visit '/'
    expect(page).to have_content 'Welcome from Rails'
  end
end