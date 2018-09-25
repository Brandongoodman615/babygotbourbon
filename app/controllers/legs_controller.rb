class LegsController < ApplicationController
  def index
    @leg = Leg.first
  end

  def update
    @leg = Leg.find(params[:id])
    leg.update_attributes(leg_params)
    render json: leg
  end

  private

  def leg_params
    params.require(:leg).permit(:done)
  end
end
