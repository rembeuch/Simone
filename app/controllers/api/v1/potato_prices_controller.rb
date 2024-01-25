class Api::V1::PotatoPricesController < ApplicationController
  def index
    @potato_prices = PotatoPrice.all.order(:time)
    render json: @potato_prices
  end
end
