class SpotsController < ApplicationController
  def index
    @spots = Spot.find(params)
    render 'index', formats: :json, handlers: :jbuilder
  end
end
