require 'spec_helper'

describe "StaticPages" do

subject { page }

  shared_examples_for "all static pages" do
       it { should have_title(full_title(page_title)) }
       it { should have_selector('h1', heading) }
  end
  
  describe "Home"  do before { visit root_path }
	  let(:page_title) { '' }
	  let(:heading) { 'Home Buddy'}
	  it_should_behave_like "all static pages"
  end 	  
  describe "Work In Progress Page" do
     it "should have the h1 'Work In Progress'" do
     visit '/static_pages/wip'
     page.should have_selector('h1', :text => '$>WorkInProgress --cu later')
  end 
  end
  
  describe "About Page" do

	  before { visit about_path }
	  let(:page_title) { 'About' }
	  let(:heading) { 'What is this?' }
	  it_should_behave_like "all static pages"
  end

end

