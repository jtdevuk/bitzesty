require 'nhs_search'
class HospitalsController < ApplicationController
  before_action :set_hospitals

  def index
    if params[:postcode].present?
      @hospitals = ::NhsSearch.new.ae_by_postcode(params[:postcode])
    else
      @hospitals = Hospital.all 
    end
  end

  def show
    @hospital = Hospital.find(params[:id])
  end

  def opening_hours
    # TODO return opening hours
  end

  def ratings
    # TODO return ratings
  end

  private
    def set_hospitals
      hospital = Hospital.all.limit(100)
      hospital_count = hospital.count
    end
end
