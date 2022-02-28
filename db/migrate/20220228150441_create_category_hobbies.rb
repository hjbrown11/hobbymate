class CreateCategoryHobbies < ActiveRecord::Migration[6.1]
  def change
    create_table :category_hobbies do |t|
      t.references :hobby, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
