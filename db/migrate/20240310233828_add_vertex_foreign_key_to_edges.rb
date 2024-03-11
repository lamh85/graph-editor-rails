class AddVertexForeignKeyToEdges < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :edges, :vertices, column: :from_vertex_id
    add_foreign_key :edges, :vertices, column: :to_vertex_id
  end
end
