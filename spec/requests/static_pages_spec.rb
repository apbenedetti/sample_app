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

  describe "Help page" do
    
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
end
