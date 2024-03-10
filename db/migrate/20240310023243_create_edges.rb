class CreateEdges < ActiveRecord::Migration[7.0]
  def change
    create_table :edges do |t|
      t.integer :from_vertex_id, null: false
      t.integer :to_vertex_id, null: false
      t.string :weight

      t.timestamps
    end
  end
end