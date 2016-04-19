class ParticipantsController < ApplicationController
  def create
    @drawing = Drawing.find_by(id: params[:drawing_id])
    if params.has_key?("participant")
      @participants = @drawing.participants.new(participant_params(params["participant"]))
      if @participants.save
      end
    else
      params[:participants].each do |person|
        if person[:name] != "" || person[:spouse] != ""
          @participants = @drawing.participants.new(participant_params(person))
          if @participants.save
          end
        end
      end
    end
  end

  private
    def participant_params(my_params)
      my_params.permit(:name, :spouse)
    end
end


