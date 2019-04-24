class FixColumnNameInCardTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :cards, :number, :rank
  end
end
