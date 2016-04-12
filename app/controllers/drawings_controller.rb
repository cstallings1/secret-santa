class DrawingsController < ApplicationController

  def new
    @drawing = Drawing.new
  end

  def create
    drawing = Drawing.new(drawing_params)
  puts "******"
  puts drawing
    if drawing.save
      drawing.users.build()
      render json: drawing
    end
  end

  private
    def drawing_params
      params.require(:drawing).permit(:name)
    end

end