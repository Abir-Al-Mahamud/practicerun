# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing data
User.destroy_all
Stock.destroy_all

# Create Users
user1 = User.create!(
  email: 'user1@example.com',
  password: 'password',
  password_confirmation: 'password'
)

user2 = User.create!(
  email: 'user2@example.com',
  password: 'password',
  password_confirmation: 'password'
)

# Create Stocks
stocks = [
  { ticker_symbol: 'AAPL', company_name: 'Apple Inc.', price: 150.00, quantity: 100, market_cap: 2_400_000_000_000, pe_ratio: 30.5 },
  { ticker_symbol: 'GOOGL', company_name: 'Alphabet Inc.', price: 2800.00, quantity: 50, market_cap: 1_800_000_000_000, pe_ratio: 35.2 },
  { ticker_symbol: 'AMZN', company_name: 'Amazon.com Inc.', price: 3400.00, quantity: 30, market_cap: 1_700_000_000_000, pe_ratio: 60.2 },
  { ticker_symbol: 'MSFT', company_name: 'Microsoft Corp.', price: 300.00, quantity: 120, market_cap: 2_200_000_000_000, pe_ratio: 35.0 },
  { ticker_symbol: 'TSLA', company_name: 'Tesla Inc.', price: 700.00, quantity: 80, market_cap: 700_000_000_000, pe_ratio: 110.0 }
]

stocks.each do |stock|
  Stock.create!(stock)
end

puts "Seeded #{User.count} users."
puts "Seeded #{Stock.count} stocks."
