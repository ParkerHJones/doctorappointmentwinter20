class ApptsController < ApplicationController

  before_action :set_doctor
  before_action :set_appt, only: [:destroy]


  def index
  end

  def show
  end

  def new
    @appts = doctor.appointments.new 
  end

  def create
    @appt = @doctor.appts.new(appt_params)
      if @appt.save
        redirect_to doctor_appts_path(@doctor)
      else
        render :new
      end
    end 

  def edit
  end

  def destroy
    @appt.destroy
    redirect_to @doctor
  end 

  private 

  def set_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end 

  def appt_params
    params.require(:appt).permit(:date, :time, :user_id)
end
end 