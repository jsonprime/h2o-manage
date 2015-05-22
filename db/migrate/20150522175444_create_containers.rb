class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :description
      t.decimal :volume_ml
      t.decimal :volume_oz
      t.boolean :refillable
      t.date :last_refill_date
      t.date :expiration_date
      t.boolean :empty
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :containers, :users
  end
end
