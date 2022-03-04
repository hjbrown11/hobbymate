class ChangeMatchesMatchToStatus < ActiveRecord::Migration[6.1]
  def change
    rename_column :matches, :match, :status
  end
end
