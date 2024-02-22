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
