require 'net/http'
require 'json'

class HomeController < ApplicationController
  # USD-BRL
  # EUR-BRL
  # BTC-BRL

  def index
    @chart_data = []

    url = URI("https://economia.awesomeapi.com.br/json/daily/USD-BRL/30")
    response = Net::HTTP.get(url)
    data = JSON.parse(response)

    data.each do |entry|
      date = entry['timestamp']
      rate = entry['high']
    end
  end
end
