class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])

  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user

    if @appointment.save
      redirect_to appointments_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])

    if @appointment.update(appointment_params)
      redirect_to appointment_path(@appointments)
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def confirm

  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to root_path, alert: "Appointment successfully deleted.", status: :see_other
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :appointment_hour,:appointment_min, :comment, :is_done, :doctor_id)
  end
end
