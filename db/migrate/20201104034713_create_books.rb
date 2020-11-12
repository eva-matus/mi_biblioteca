class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.boolean :state
      t.datetime :borrowed_at
      t.date :returned_at

      t.timestamps
    end
  end
end
