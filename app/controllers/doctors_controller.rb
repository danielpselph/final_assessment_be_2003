class DoctorsController < ApplicationController

  def new
    @hospital = Hospital.find(params[:hospital_id])
  end

  def create
    hospital = Hospital.find(params[:hospital_id])
    doctor = hospital.doctors.create(doctor_params)
    redirect_to hospital_path(hospital)
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  private

  def doctor_params
    params.permit(:name, :specialty, :education)
  end
  
  
end