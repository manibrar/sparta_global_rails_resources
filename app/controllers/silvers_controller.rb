class SilversController < ApplicationController

silvers = {
    id: 0,
    title: "18ct",
    unit: "lbs",
    price: "$1253"
  }

  def index
    @silver = silvers
    respond_to do |format|
      format.html do
      end
    end
  end

  def new

  end

end
