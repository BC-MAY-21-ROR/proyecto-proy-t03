class PsychologistController < ApplicationController
  def appointment
    @appointment = Appointment.where(psychologist_id: get_psychologist)
  end
  
  private
  def get_psychologist
    current_psychologist.id
  end
end