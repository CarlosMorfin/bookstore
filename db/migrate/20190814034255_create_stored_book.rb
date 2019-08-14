class CreateStoredBook < ActiveRecord::Migration[5.2]
  def change
    create_table :stored_book do |t|
      t.belongs_to  :store,      null: false, foreign_key: true
      t.belongs_to  :book,                    foreing_key: true
      t.integer     :book_count, null: false, default: 0

      t.timestamps
    end
  end
end
