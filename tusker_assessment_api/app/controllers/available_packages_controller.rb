class AvailablePackagesController < ApplicationController
  include SourceApiHelper

  def index
    available_packages = get_available_packages()
    render json: available_packages
  end
end
