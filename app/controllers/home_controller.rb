class HomeController < ApplicationController
  # USD-BRL
  # EUR-BRL
  # BTC-BRL

  def index
    @chart_data = [["2025-01-01" => 2], ["2025-01-02" => 3]]
  end
end
