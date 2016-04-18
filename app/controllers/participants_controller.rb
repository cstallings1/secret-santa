class ParticipantsController < ApplicationController

  def create
    @drawing = Drawing.find_by(id: params[:drawing_id])
    if params.has_key?("participant")
      @drawing.participants.create(participant_params(params["participant"]))
    else
      params[:participants].each do |person|
        if person[:name] != "" || person[:spouse] != ""
          @drawing.participants.create(participant_params(person))
        end
      end
    end
  end

  private
    def participant_params(my_params)
      my_params.permit(:name, :spouse)
    end
end


