class CreateVertices < ActiveRecord::Migration[7.0]
  create_enum :shape, ['circle', 'rectangle']

  def change
    create_table :vertices do |t|
      t.integer :centre_x, null: false
      t.integer :centre_y, null: false
      t.integer :height
      t.integer :width
      t.integer :radius
      t.enum :shape, enum_type: 'shape', default: 'circle', null: false

      t.timestamps
    end
  end
end
