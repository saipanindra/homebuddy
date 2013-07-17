require 'spec_helper'

describe "StaticPages" do
  describe "Work In Progress Page" do
     it "should have the h1 'Work In Progress'" do
     visit '/static_pages/wip'
     page.should have_selector('h1', :text => '$>WorkInProgress --cu later')
  end 

  end

  end

