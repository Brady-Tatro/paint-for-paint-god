class Addcolumn < ActiveRecord::Migration[5.0]
  def change
    add_column :colors, :hex, :string
  end
end
