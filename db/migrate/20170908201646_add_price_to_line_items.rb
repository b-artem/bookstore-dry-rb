# frozen_string_literal: true

class AddPriceToLineItems < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :price, :decimal, precision: 7, scale: 2
  end
end
