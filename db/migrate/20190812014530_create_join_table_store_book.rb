class CreateJoinTableStoreBook < ActiveRecord::Migration[5.2]
  def change
    create_join_table :store, :book do |t|
      t.index   :book_id
      t.index   :store_id
      t.integer :book_count, default: 0, null: false

      t.timestamps
    end

    add_foreign_key :book_store, :store, on_delete: :cascade
  end
end
