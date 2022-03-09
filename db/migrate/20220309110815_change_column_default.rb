class ChangeColumnDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default(:matches, :status, nil)
  end
end
