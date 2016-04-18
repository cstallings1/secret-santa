class ParticipantsController < ApplicationController

  def new
    @participant = Participant.new
  end

  def create
    @drawing = Drawing.find_by(id: params[:drawing_id])
    @drawing.participants.create(participant_params)

  end

  def destroy

  end

  private
    def participant_params
      params.require(:participant).permit(:name, :spouse)
    end
end

