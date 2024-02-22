class VerticesController < ApplicationController
  def index
    vertices = Vertex.all
    render json: vertices
  end
end
