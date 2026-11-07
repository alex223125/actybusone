class CreateDirectionHierarchies < ActiveRecord::Migration[7.0]
  def change
    create_table :direction_hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.integer :descendant_id, null: false
      t.integer :generations, null: false
    end

    add_index :direction_hierarchies, [:ancestor_id, :descendant_id, :generations],
      unique: true,
      name: "direction_anc_desc_idx"

    add_index :direction_hierarchies, [:descendant_id],
      name: "direction_desc_idx"
  end
end
