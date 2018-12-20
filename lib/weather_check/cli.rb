class WeatherCheck::CLI


  def call
    list_weathers
    menu
    goodbye
  end

def list_weathers
  puts "Today's Current Weather Forecast Options"
  @weathers = WeatherCheck::Weather.today
  @weathers.each.with_index(1) do |weather, i|

  end
end

def menu
  input = nil
  while input != "exit"
  puts "Enter 1 for New York, NY weather, 2 for Los Angeles, California weather."
  input = gets.strip.downcase

    the_weather = @weathers[input.to_i-1]

  case input
  when "1"
   puts "The temperature of NY is #{the_weather.temperature} currently. With a low expected tonight of #{the_weather.low}!"
  when "2"
    puts "The temperature of CA is #{the_weather.temperature} currently. With a low expected tonight of #{the_weather.low}!"
  when "menu"
    menu
  else
     puts "No clue what you're talking about, type menu or exit."
   end
 end
end

    def goodbye
      puts "See you tomorrow for more weather reports!!!"
  end
end
