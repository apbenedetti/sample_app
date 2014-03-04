require 'spec_helper'

describe "StaticPages" do

  # describing "home page," which can be any string
  describe "Home page" do
    
    # another string, basically a comment of what is enclosed
    it "should have the content 'Sample App'" do
      # Capybara function to simulate visiting the url
      visit '/static_pages/home'
      # Capybara variable `page` expected to contain the string 'Sample App'
      expect(page).to have_content('Sample App')
    end
  end
end
