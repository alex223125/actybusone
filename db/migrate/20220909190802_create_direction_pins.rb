class CreateDirectionPins < ActiveRecord::Migration[7.0]
  def change
    create_table :direction_pins do |t|
      t.references :direction, null: false, foreign_key: true
      t.references :pin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
