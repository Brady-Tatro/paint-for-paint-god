class Pictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :army, null: false
      t.string :primer, null: false
      t.string :base, null: false
      t.string :second_base
      t.string :third_base
      t.string :highlight, null: false
      t.string :second_highlight
      t.string :third_highlight
      t.string :shade, null: false
      t.string :second_shade
    end
  end
end
