class WeatherCheck::Scraper

  attr_accessor :name, :series

  @@all = []

  def initialize(name=nil, series=nil)
    @name = name
    @series = series

  end
  def self.all
    @@all
  end 
