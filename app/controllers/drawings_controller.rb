class DrawingsController < ApplicationController

  def new
    @drawing = Drawing.new
  end

  def create
    @drawing = Drawing.new(drawing_params)
    if @drawing.save
      redirect_to drawing_path(@drawing)
    else
      flash.now[:errors] = @drawing.errors.full_messages.to_sentence
      render "welcome/homepage"
    end
  end

  def show
    @drawing = Drawing.find(params[:id])
    puts @drawing
  end

  private
    def drawing_params
      params.require(:drawing).permit(:name)
    end

end