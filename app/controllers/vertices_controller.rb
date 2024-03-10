class VerticesController < ApplicationController
  skip_forgery_protection only: [:update], if: Proc.new { Rails.env == 'development' }

  def index
    vertices = Vertex.all
    render json: vertices
  end

  def update
    vertex = Vertex.find(params[:id])

    begin
      vertex.update!(vertex_params)
    rescue => error
      render json: { message: "Error type: #{error.class.to_s}" }
    end

    render json: vertex.reload
  end

  def destroy
    vertex = Vertex.find(params[:id])

    begin
      vertex.destroy!
    rescue
      render json: { message: "Error type: #{error.class.to_s}" }
    end
  end

  private

    def vertex_params
      params.require(:vertex).permit(:centre_x, :centre_y, :height, :width, :radius, :shape)
    end

end
