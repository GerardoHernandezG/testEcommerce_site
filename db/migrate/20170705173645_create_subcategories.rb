class CreateSubcategories < ActiveRecord::Migration[5.1]
  def change
    create_table :subcategories do |t|
      t.references :category, foreign_key: true
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
