class ProspectsController < ApplicationController
  include SourceApiHelper, ProspectsHelper

  def index
    prospects = get_prospects()
    render json: prospects
  end

  def next_packages
    next_delivery = next_delivery()
    render json: next_delivery
  end
end
