class CreatePricings < ActiveRecord::Migration[6.0]
  def change
    create_table :pricings do |t|

      t.timestamps
    end
  end
end
