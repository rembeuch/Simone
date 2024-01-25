class Api::V1::MaxProfitController < ApplicationController
  def index
    @potato_prices = PotatoPrice.all.order(:time)
    max_profits_by_day = calculate_max_profits_by_day(@potato_prices)
    render json: max_profits_by_day
  end

  private

  def calculate_max_profits_by_day(prices)
    max_profits = {}

    prices.each do |price|
      date = price.time.to_date

      if max_profits[date].nil?
        max_profits[date] = calculate_max_profit_for_day(prices.select { |p| p.time.to_date == date })
      end
    end

    max_profits
  end

  def calculate_max_profit_for_day(prices)
    max_profit = 0
    min_price = prices.first.value

    prices.each do |price|
      current_profit = price.value - min_price
      max_profit = [max_profit, current_profit].max.round(2)
      min_price = [min_price, price.value].min
    end

    max_profit * 100
  end
end
