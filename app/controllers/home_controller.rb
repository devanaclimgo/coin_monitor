class HomeController < ApplicationController
  # USD-BRL
  # EUR-BRL
  # BTC-BRL

  def index
    @chart_data = []

    # https://economia.awesomeapi.com.br/json/daily/:moeda/:numero_dias
  end
end
