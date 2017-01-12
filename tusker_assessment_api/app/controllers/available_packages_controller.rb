class AvailablePackagesController < ApplicationController
  include SourceApiHelper, AvailablePackagesHelper

  def index
    available_packages = get_available_packages()
    render json: available_packages
  end

  def cities
    city_packages = city_delivery()
    render json: city_packages
  end
end
