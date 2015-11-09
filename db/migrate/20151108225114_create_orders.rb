class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :property_type, index: true, foreign_key: true
      t.text :property_address
      t.integer :sqft
      t.integer :number_of_units, default: 0
      t.boolean :exterior_tour, default: false
      t.boolean :floor_plan, default: false
      t.references :photo, index: true, foreign_key: true
      t.boolean :custome_domain, default: false
      t.integer :detach_space, default: 0

      t.timestamps null: false
    end
  end
end
