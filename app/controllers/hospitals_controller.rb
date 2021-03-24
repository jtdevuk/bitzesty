require 'nhs_search'
class HospitalsController < ApplicationController
  before_action :set_hospitals

  def index
    if params[:postcode].present? && is_valid_postcode?(params[:postcode])   
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

  def is_valid_postcode?(postcode)
    !!(postcode =~ /^\s*((GIR\s*0AA)|((([A-PR-UWYZ][0-9]{1,2})|(([A-PR-UWYZ][A-HK-Y][0-9]{1,2})|(([A-PR-UWYZ][0-9][A-HJKSTUW])|([A-PR-UWYZ][A-HK-Y][0-9][ABEHMNPRVWXY]))))\s*[0-9][ABD-HJLNP-UW-Z]{2}))\s*$/i)
  end

  private
    def set_hospitals
      hospital = Hospital.all.limit(100)
      hospital_count = hospital.count
    end
end
