require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "About page" do
    before { visit "/static_pages/about" }
    it { should have_content 'Welcome to ccCultura' }
    it { should have_selector('title', text: "ccCultura | About") }
  end

  describe "Follow page" do
    before { visit "/static_pages/follow" }
    it { should have_content 'Follow ccCultura' }
    it { should have_selector('title', text: "ccCultura | Follow") }
  end

  describe "Contribute page" do
    before { visit "/static_pages/contribute" }
    it { should have_content 'ccContribute' }
    it { should have_selector('title', text: "ccCultura | Contribute") }
  end

  describe "Links page" do
    before { visit "/static_pages/links" }
    it { should have_content "Links & Source Material" }
    it { should have_selector('title', text: "ccCultura | Links") }
  end
end
