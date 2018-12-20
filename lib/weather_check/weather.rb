class WeatherCheck::Weather

  attr_accessor :temperature, :low

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
          weather.temperature = doc.search("span.large-temp").first.text.strip
          weather.low = doc.search("span.small-temp").slice(1,3).first.text.strip

          weather
        end

        def self.scrape_ca
          doc = Nokogiri::HTML(open("https://www.accuweather.com/en/us/los-angeles-ca/90012/hourly-weather-forecast/347625"))

          weather = self.new
          weather.temperature = doc.search("span.large-temp").first.text.strip
          weather.low = doc.search("span.small-temp").slice(1,3).first.text.strip

          weather
        end
      end

        #  def self.scrape_tomorrow
          #  doc = Nokogiri::HTML(open("https://www.accuweather.com/en/us/new-york-ny/10007/current-weather/349727?day=1"))

          #  weather = self.new
            #weather.tomorrow = doc.search("span.large-temp").second.text.strip

        #  weather
      #  end
      #end
