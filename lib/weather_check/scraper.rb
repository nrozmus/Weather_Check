#class WeatherCheck::Weather

#def self.scrape
#  @doc = Nokogiri::HTML(open("https://www.accuweather.com/en/us/new-york-ny/10007/current-weather/349727"))
#  @scraping_temperature = @doc.css("div.temp span.large-temp")
#end

#def self.scrape_temperature
#  @scraping_temperature.each do |ele|
#    name = ele.css("a.desc").text.strip
#    series = ele.css("div.sub ul li").text.strip
#    temperature = self.new(name, series)
#    @@all << product
#  end
