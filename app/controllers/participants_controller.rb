class ParticipantsController < ApplicationController

  def new
    @participant = Participant.new
  end

  def create
    @drawing = Drawing.find_by(id: params[:id])
    @drawing.participants.new(participant_params)
  end

  def destroy

  end

  private
    def participant_params
      params.require(:participant).permit(:name, :spouse)
    end
end