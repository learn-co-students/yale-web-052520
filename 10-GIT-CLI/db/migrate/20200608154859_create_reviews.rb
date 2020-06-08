class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :customer_id
      t.integer :bakery_id
    end
  end
end
