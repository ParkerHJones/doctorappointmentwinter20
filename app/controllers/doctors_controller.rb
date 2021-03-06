class DoctorsController < ApplicationController

  before_action :set_doctor, only: [:show, :edit, :update, :destroy]


  def index
    @doctors = Doctor.all
  end

  def show
    @appts = @doctor.appts
  end

  def new
    @doctor = Doctor.new
    render partial: "form"
  end 

  def create 
    @doctor = Doctor.create(doctor_params)
    if @doctor.save
      redirect_to @doctor
    else 
      render :new
    end
  end 

  def edit
    render partial: "form"
  end 

  def update
    if @doctor.update(doctor_params)
      redirect_to @doctor
    else 
      redirect_to :edit
    end 


  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end 


  private 


  def set_doctor
    @doctor = Doctor.find(params[:id])
  end 

  def doctor_params
    params.require(:doctor).permit(:name, :profession, :md)
  end 
end
end 
 
