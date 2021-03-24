require 'nhs_search'
class HosptialsController < ApplicationController
  before_action :set_hosptials

  def index
    if params[:postcode].present?
      @hosptials = ::NhsSearch.new.ae_by_postcode(params[:postcode])
    else
      @hosptials = Hosptial.all 
    end
  end

  def show
    @hosptial = Hosptial.find(params[:id])
  end

  def opening_hours
    # TODO return opening hours
  end

  def ratings
    # TODO return ratings
  end

  private
    def set_hosptials
      hosptials = Hosptial.all.limit(100)
      hosptials_count = hosptials.count
    end
end
