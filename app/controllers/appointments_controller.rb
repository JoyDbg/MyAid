class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end

  def show
    @appointment = Appointment.find(params[:id])
    # @appointments = []
    # current_user.appointments.each do |appointment|
    #   @appointments << appointment
    # end
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user

    @doctor = Doctor.find(params[:appointment][:doctor_id])
    @appointment.doctor = @doctor
    @appointment.day_half = params[:appointment][:day_half]

    if params[:appointment][:time_afternoon].empty?
      @appointment.appointment_hour = params[:appointment][:time_morning].split(":").first.to_i
      @appointment.appointment_min = params[:appointment][:time_morning].split(":").last.to_i
    else
      @appointment.appointment_hour = params[:appointment][:time_afternoon].split(":").first.to_i
      @appointment.appointment_min = params[:appointment][:time_afternoon].split(":").last.to_i
    end

    if @appointment.save
      redirect_to appointments_path, notice: 'Appointment was successfully created.'
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
      redirect_to appointments_path, notice: 'Appointment was successfully edited.'
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def confirm

  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path, alert: "Appointment successfully deleted.", status: :see_other
  end

  private

  def appointment_params
    params.require(:appointment).permit(:title, :date, :appointment_hour, :appointment_min, :comment, :is_done, :doctor_id)
  end
end
