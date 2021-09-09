class AppointmentsController < ApplicationController
  before_action :authenticate_patient!
  before_action :get_appointment, only: [:edit, :update, :destroy, :show]

  def index
    @appointment = Appointment.where(patient_id: get_patient)
    @psychologist = Psychologist.all
  end
  
  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params_appointment)
    if @appointment.save
      flash[:notice] = "Appointment successfully created!"
      redirect_to root_path
    else
      redirect_to appointments_path
    end
  end  
  
  def edit; 
  end

  def show; end
  
  def update
    @appointment.update(params_appointment)
    if @appointment.update
      flash[:notice] = "Appointment successfully updated!"
      redirect_to appointments_path
    else
      redirect_to edit_appointment_path
    end
  end

  def destroy
    @appointment.destroy

    redirect_to root_path
  end
  
  
  

  private

  def get_patient
    current_patient.id
  end

  def params_appointment
    params.require(:appointment).permit(:datetime, :pay, :message, :patient_id, :psychologist_id)
  end
  
  def get_appointment
    @appointment = Appointment.find(params[:id])
  end
  
end
