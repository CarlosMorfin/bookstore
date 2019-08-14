class ChangeForeingKeysOfStoreBook < ActiveRecord::Migration[5.2]
  def up
    remove_foreign_key :stored_book, :store
    add_foreign_key :stored_book, :store, on_delete: :cascade
    add_foreign_key :stored_book, :book
  end

  def down
    remove_foreign_key :stored_book, :store
    add_foreign_key :stored_book, :store
  end
end
