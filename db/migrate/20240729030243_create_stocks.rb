class CreateStocks < ActiveRecord::Migration[7.1]
  def change
    create_table :stocks do |t|
      t.string :ticker_symbol
      t.string :company_name
      t.decimal :price
      t.integer :quantity
      t.decimal :market_cap
      t.decimal :pe_ratio

      t.timestamps
    end
  end
end
