class CreateImplementators < ActiveRecord::Migration[7.0]
  def change
    create_table :implementators do |t|
      t.string :title

      t.timestamps
    end
  end
end
