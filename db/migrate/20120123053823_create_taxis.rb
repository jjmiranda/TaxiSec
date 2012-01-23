class CreateTaxis < ActiveRecord::Migration
  def change
    create_table :taxis do |t|
      t.string :placa
      t.string :color
      t.string :marca
      t.string :modelo

      t.timestamps
    end
  end
end
