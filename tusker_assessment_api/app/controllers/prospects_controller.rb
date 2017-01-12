class ProspectsController < ApplicationController
  include ProspectsHelper

  def index
    prospects = get_prospects()
    render json: prospects
  end
end
