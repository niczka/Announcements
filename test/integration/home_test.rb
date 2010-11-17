require 'integration_test_helper' 

class HomeTest < ActionController::IntegrationTest

  test "viewing home site" do
    visit '/'
    assert page.has_content?('Announcements')
  end

  test "adding an announcement" do
    visit '/'
    click_link "New Announcement"
    assert page.has_content?('New announcement')
    fill_in 'Author', :with => 'R.K.'
    fill_in 'Title', :with => 'Niebo'
    fill_in 'Content', :with => 'do wynajcia!'
    click 'Create Announcement'
    assert page.has_content?('Announcement was successfully created.')
    click_link "Back"
    assert page.has_content?('Announcements')
  end


end

