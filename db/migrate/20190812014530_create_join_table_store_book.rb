class CreateJoinTableStoreBook < ActiveRecord::Migration[5.2]
  def change
    create_join_table :store, :book do |t|
      t.index   :store_id
      t.index   :book_id
      t.integer :book_count, null: false

      t.timestamps
    end
  end
end
