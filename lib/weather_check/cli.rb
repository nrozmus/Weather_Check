class WeatherCheck::CLI


  def call
    list_weathers
    menu
    goodbye
  end

def list_weathers
  puts "Today's Weather Forecast Options:"
  @weathers = WeatherCheck::Weather.today
  @weathers.each.with_index(1) do |weather, i|
    #puts "{weather.temperature}"
  end
end

def menu
  input = nil
  while input != "exit"
  puts "Enter 1 for NY weather, 2 for CA weather."
  input = gets.strip.downcase

  #if input.to_i > 0
    the_weather = @weathers[input.to_i-1]
  #  puts "The weather in NY is #{the_weather.temperature}"
  #elsif input == "list"
  #  list_deals
#  else
  case input
  when "1"
   puts "The temperature of NY is...#{the_weather.temperature}"
  when "2"
    puts "The temperature of CA is...#{the_weather.temperature}"
  when "menu"
     menu
  else
     puts "No clue what you're talking about, type menu or exit or pick a number."
  end
  end
end



    def goodbye
      puts "See you tomorrow for more weather reports!!!"
  end
end
