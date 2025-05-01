class HomeController < ApplicationController
  # USD-BRL
  # EUR-BRL
  # BTC-BRL

  def index
    @chart_data = [["2025-01-01" => 2], ["2025-01-02" => 3]]

    # https://economia.awesomeapi.com.br/json/daily/:moeda/:numero_dias
  end
end
