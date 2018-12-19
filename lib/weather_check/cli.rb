class WeatherCheck::CLI


  def call
    weather
    menu
    goodbye
  end

def weather
  puts <<-DOC.gsub /^\s*/, ' '
  "Today's Weather Forecast"
  1. New York, New York
  2. Los Angeles, California
  DOC
end

def menu
  input = nil
  while input != "exit"
  puts "Enter 1 for NY weather, 2 for CA weather."
input = gets.strip.downcase
case input
when "1"
  puts "Current weather in NY.."
when "2"
  puts "Current weather in CA.."
when "weather"
  weather
else
  puts "Only two weather checks available, type weather or exit."
    end
  end
end

def goodbye
  puts "See you tomorrow for another weather check!"
end
end
