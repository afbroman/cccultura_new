require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "About page" do
    before { visit root_path }
    it { should have_content 'Welcome to ccCultura' }
    it { should have_selector('title', text: "ccCultura | About") }
  end

  describe "Follow page" do
    before { visit "/follow" }
    it { should have_content 'Follow ccCultura' }
    it { should have_selector('title', text: "ccCultura | Follow") }
  end

  describe "Contribute page" do
    before { visit "/contribute" }
    it { should have_content 'ccContribute' }
    it { should have_selector('title', text: "ccCultura | Contribute") }
  end

  describe "Links page" do
    before { visit "/links" }
    it { should have_content "Links & Source Material" }
    it { should have_selector('title', text: "ccCultura | Links") }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link 'follow'
    page.should have_selector 'title', text: 'ccCultura | Follow'
    click_link 'contribute'
    page.should have_selector 'title', text: 'ccCultura | Contribute'
    click_link 'other links'
    page.should have_selector 'title', text: 'ccCultura | Links'
    click_link 'about'
    page.should have_selector 'title', text: 'ccCultura | About'
  end
end
