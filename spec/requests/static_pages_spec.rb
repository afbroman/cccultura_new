require 'spec_helper'

describe "Static Pages" do

  subject { page }

  describe "About page" do
    before { visit "/static_pages/about" }
    it { should have_content 'Welcome to ccCultura' }
  end

  describe "Follow page" do
    before { visit "/static_pages/follow" }
    it { should have_content 'Follow ccCultura' }
  end

  describe "Contribute page" do
    before { visit "/static_pages/contribute" }
    it { should have_content 'ccContribute' }
  end

  describe "Links page" do
    before { visit "/static_pages/links" }
    it { should have_content "Links & Source Material" }
  end
end
