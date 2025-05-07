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

    hash = {}
    data.each do |entry|
      date = Time.at(entry['timestamp'].to_i)
      rate = entry['high']

      hash[date] = rate
    end

    @chart_data = hash
  end
end
