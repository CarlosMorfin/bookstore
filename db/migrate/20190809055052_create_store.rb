class CreateStore < ActiveRecord::Migration[5.2]
  def change
    create_table :store do |t|
      t.string "codename", limit: 32,  null: false
      t.string "address",  limit: 132, null: false
      t.string "phone",    limit: 64
    end
  end
end
