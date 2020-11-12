class ChangeStatusToBeIntegerInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :status, 'integer USING CAST(status AS integer)'
  end
end
