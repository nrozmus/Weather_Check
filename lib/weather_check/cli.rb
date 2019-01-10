class WeatherCheck::CLI

  def call
    @weathers = WeatherCheck::Weather.today
    list_weathers
    menu
    goodbye
  end

def list_weathers
  puts "Today's Current Weather Forecast Options"
  end
end

def menu
  input = nil
  puts "Select your city"
  @weathers.each.with_index(1) do |weather, i|
  puts "#{i}. #{weather.city}"

   input = gets.strip.downcase
  the_weather = @weathers[input.to_i-1]
  case input
  when "1"
   puts "Would you like to see current weather or tonights?"
  when "2"
    puts "Would you like to see current weather or tonights?"
  when "menu"
    menu
  when "exit"
   goodbye
    exit
  else
     puts "No clue what you're talking about, type menu or exit."
   end
 end
end
    def goodbye
      puts "See you tomorrow for more weather reports!!!"
end
