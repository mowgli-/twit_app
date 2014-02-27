require 'spec_helper'

describe "StaticPages" 

      it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end

    it "should have the base title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
  visit '/static_pages/help'
  expect(page).to have_title("help")
	end
  end

  describe "about page" do

    it "should have the content 'about'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

     it "should have the right title" do
  visit '/static_pages/about'
  expect(page).to have_title("about")
	end
  end




end
