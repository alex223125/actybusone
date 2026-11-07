class CreateDirections < ActiveRecord::Migration[7.0]
  def change
    create_table :directions do |t|
      t.string :name

      t.timestamps
    end
  end
end
