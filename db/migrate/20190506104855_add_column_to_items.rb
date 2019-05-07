class AddColumnToItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :items, :category1, foreign_key: {to_table: :categories}
    add_reference :items, :category2, foreign_key: {to_table: :categories}
  end
end
