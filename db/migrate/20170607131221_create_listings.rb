class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :book_name
      t.integer :version
      t.string :course_code
      t.boolean :required
      t.float :price
      t.string :description
      t.integer :user_id

      t.timestamps

    end
  end
end
