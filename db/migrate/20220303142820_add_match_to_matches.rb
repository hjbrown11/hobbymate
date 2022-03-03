class AddMatchToMatches < ActiveRecord::Migration[6.1]
  def change
    add_column :matches, :match, :integer, default: 0
  end
end
