# Potato Price Tracker

Welcome to the Potato Price Tracker application! This application provides two APIs related to potato prices - one for retrieving historical potato prices and another for calculating maximum profits per day.

## Setup

1. Clone this repository:

   ```bash
   git clone https://github.com/votre-utilisateur/potato_price_tracker.git
   cd potato_price_tracker
Install dependencies:

bundle install
Set up the database:

rails db:create
rails db:migrate
rails db:seed
Start the Rails server:

rails server
Endpoints
Potato Price API
Endpoint: http://localhost:3000/

Description: This endpoint returns historical potato prices, providing an array of prices sorted by date and time.

Example Response:

json

[
  {"time":"2022-08-22T09:00:00.000Z","value":100.25},
  {"time":"2022-08-22T09:01:00.000Z","value":100.29},
  // ...
]

Maximum Profit API
Endpoint: http://localhost:3000/api/v1/max_profit

Description: This endpoint calculates and returns the maximum profit for each day based on historical potato prices.

Example Response:

json

{
  "2022-08-22": 4,
  "2022-08-23": 2,
  "2022-08-24": 5
}

Usage
Access the Potato Price API by visiting http://localhost:3000/.
Access the Maximum Profit API by visiting http://localhost:3000/api/v1/max_profit.
Feel free to explore and integrate these APIs into your application!


