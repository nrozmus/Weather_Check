class WeatherCheck::Weather

  attr_accessor :temperature, :low, :city

  def self.today

        self.scrape_weathers
        end

        def self.scrape_weathers
          weathers = []

          weathers << self.scrape_ny
          weathers << self.scrape_ca

          weathers
        end

        def self.scrape_ny
          doc = Nokogiri::HTML(open("https://www.accuweather.com/en/us/new-york-ny/10007/current-weather/349727"))

          weather = self.new
          weather.temperature = doc.search("span.large-temp").first.text.strip #current temp
          weather.low = doc.search("span.small-temp").slice(1,3).first.text.strip #expected low temp
          weather.city = "New York"

          weather
        end

        def self.scrape_ca
          doc = Nokogiri::HTML(open("https://www.accuweather.com/en/us/los-angeles-ca/90012/hourly-weather-forecast/347625"))

          weather = self.new
          weather.temperature = doc.search("span.large-temp").first.text.strip
          weather.low = doc.search("span.small-temp").slice(1,3).first.text.strip
          weather.city = "California"
          weather
        end
      end
