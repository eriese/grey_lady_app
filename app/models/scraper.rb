class Scraper
  def initialize(url)
    @url = url
    @response = HTTParty.get(@url)
    @doc = Nokogiri::HTML(@response)
  end
  def get_hrefs
    @doc.css("a").map { |href| href.get_attribute("href") }
  end
  def get_images
    @doc.css("img").map { |href| href.get_attribute("src") }
  end
end
