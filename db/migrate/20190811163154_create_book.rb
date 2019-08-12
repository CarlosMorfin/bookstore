class CreateBook < ActiveRecord::Migration[5.2]
  def change
    create_table :book do |t|
      t.string  "title",  limit: 132, null: false
      t.string  "author", limit: 132, null: false
      t.integer "year"

      t.timestamp
    end

    add_index :book, :title, unique: true
  end
end
