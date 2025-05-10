# 📈 Coin Monitor: Real-Time Currency Tracking (Rails App)

![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white) ![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white) ![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)	![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)

## Ruby on Rails | API Integration | Data Visualization

A containerized Rails application that tracks USD, EUR, and BTC exchange rates against BRL with beautiful charts - no Ruby installation needed!

### 💡 The Idea

I wanted a simple way to monitor how key currencies (USD, EUR, BTC) fluctuate against the Brazilian Real, with:
- Clear historical data visualization
- Automatic daily updates
- Easy-to-read charts

### 🛠️ How I Built It

1. Core Tech Stack
- Ruby on Rails: Backend framework
- AwesomeAPI: Free currency data (https://economia.awesomeapi.com.br)
- Net::HTTP: For API requests
- Chart.js (in views): For visualizing the data

2. Key Components

💰 Currency Configuration
```ruby
CURRENCIES = [
  { code: 'USD-BRL' },  # US Dollar
  { code: 'EUR-BRL' },  # Euro
  { code: 'BTC-BRL' }   # Bitcoin
]
```
- Easy to add new currencies by extending the array

📊 Data Fetching Logic
```ruby
url = URI("https://economia.awesomeapi.com.br/json/daily/#{currency[:code]}/30")
response = Net::HTTP.get(url)
data = JSON.parse(response)
```
- Gets 30 days of historical data
- Handles JSON parsing automatically

🗓️ Date Formatting
```ruby
Time.at(entry['timestamp'].to_i).strftime("%d/%m/%y")
```
- Converts UNIX timestamps to readable dates

### 🐳 Docker Deployment
Run this project with one command—no Ruby or Rails setup required! Perfect for quick testing or production deployment.

```git
git clone https://github.com/devanaclimgo/coin_monitor.git
```


###### Built with ❤️ by Ana - 2025
