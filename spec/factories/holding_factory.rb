# frozen_string_literal: true

FactoryGirl.define do
  factory :holding do
    quantity 40
    initial_btc_rate 0.5
    coin
    portfolio
  end
end
