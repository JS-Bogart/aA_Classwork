class AddStartAndEndDates < ActiveRecord::Migration[5.2]
  def change
    add_column :cat_rental_requests, :start_date, :date, null: false
    add_column :cat_rental_requests, :end_date, :date, null: false
  end
end
