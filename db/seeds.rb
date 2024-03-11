def seed_vertices
  vertices_params = [
    {
      centre_x: 100,
      centre_y: 100,
      height: nil,
      width: nil,
      radius: 50,
      shape: 'circle'
    },
    {
      centre_x: 200,
      centre_y: 200,
      height: nil,
      width: nil,
      radius: 25,
      shape: 'circle'
    },
    {
      centre_x: 300,
      centre_y: 300,
      height: 10,
      width: 100,
      radius: nil,
      shape: 'rectangle'
    }
  ]

  Vertex.create(vertices_params)
end

def seed_edges
  vertices_ids = Vertex.pluck(:id)

  pairs = []
  vertices_ids.first(3).each_with_index do |vertex_id, index|
    next_id = index + 1 == vertices_ids.length ? vertices_ids.first : vertices_ids[index + 1]
    pairs << [vertex_id, next_id]
  end

  params = pairs.map do |pair|
    { from_vertex_id: pair[0], to_vertex_id: pair[1] }
  end

  Edge.create(params)
end

seed_vertices
seed_edges