class ChangeStateToStatusInBooks < ActiveRecord::Migration[5.2]
  def change
    rename_column :books, :state, :status
  end
end
