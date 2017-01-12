class AvailablePackagesController < ApplicationController
  include AvailablePackagesHelper

  def index
    available_packages = get_available_packages()
    render json: available_packages
  end
end
