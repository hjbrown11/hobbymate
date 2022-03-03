class RemoveMatchedFromMatches < ActiveRecord::Migration[6.1]
  def change
    remove_column :matches, :matched, :boolean
  end
end
