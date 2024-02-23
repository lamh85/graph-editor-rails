class VerticesController < ApplicationController
  def index
    vertices = Vertex.all
    render json: vertices
  end

  def patch
    vertex = Vertex.find(params[:id])
    
    begin
      vertex.update!(vertex_params)
    rescue => error
      render json: { message: "Error type: #{error.class.to_s}" }
    end

    render json: vertex.reload
  end

  private

    def vertex_params
      params.require(:vertex).permit(:centre_x, :centre_y, :height, :width, :radius, :shape)
    end

end
