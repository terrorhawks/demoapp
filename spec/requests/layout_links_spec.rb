require 'spec_helper'

describe "LayoutLinks" do
  
  it  "should have home page link" do
    get "/" 
    response.should have_selector('title', :content => "sHaredBeats.com")    
  end
  
  it "should have contact us page link" do
    get "/contact"
    response.should have_selector('title', :content => "sHaredBeats.com | Contact Us")
  end
  
  it "should have about page link" do
    get "/about"
    response.should have_selector('title', :content => "sHaredBeats.com | About Us")
  end
  
  it "should have a signup page at '/signup'" do
    get '/signup'
    response.should have_selector('title', :content => "sHaredBeats.com | Sign up")
  end
  
end
