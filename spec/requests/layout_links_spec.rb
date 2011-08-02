require 'spec_helper'

describe "LayoutLinks" do
  
  it  "should have home page link" do
    get "/"
    page.should have_selector('title', :key => "Home")    
  end
  
  it "should have contact us page link" do
    get "/contact"
    page.should have_selector('title', :content => "Contact")
  end
  
  it "should have about page link" do
    get "/about"
    page.should have_selector('title', :content => "About")
  end
  
end
