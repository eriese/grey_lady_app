require_relative "spec_helper"

describe Scraper do
  let(:scraper) {Scraper.new("http://generalassemb.ly")}
  describe :get_hrefs do
    it "returns an array" do
      expect(scraper.get_hrefs).to be_instance_of(Array)
    end
    it "gets all the links on a page" do
      expect(scraper.get_hrefs.length).to eq(91)
    end
  end
  describe :get_images do
    it "returns an array" do
      expect(scraper.get_images).to be_instance_of(Array)
    end
    it "gets all the links on a page" do
      expect(scraper.get_images.length).to eq(20)
    end
  end
end

