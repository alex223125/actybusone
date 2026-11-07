class AddPinContentCategoryIdToPins < ActiveRecord::Migration[7.0]
  def change
    add_column :pins, :pin_content_category_id, :integer
  end
end
