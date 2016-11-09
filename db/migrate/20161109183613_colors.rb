class Colors < ActiveRecord::Migration[5.0]
  def change
    create_table :colors do |t|
      t.string :name, null: false
      t.boolean :base, default: false
      t.boolean :secondary_base, default: false
      t.boolean :highlight, default: false
      t.boolean :secondary_highlight, default: false
    end
  end
end
