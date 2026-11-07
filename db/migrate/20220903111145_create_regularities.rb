class CreateRegularities < ActiveRecord::Migration[7.0]
  def change
    create_table :regularities do |t|
      t.string :title

      t.timestamps
    end
  end
end
