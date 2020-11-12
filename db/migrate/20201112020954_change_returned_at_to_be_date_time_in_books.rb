class ChangeReturnedAtToBeDateTimeInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :returned_at, :datetime
  end
end
