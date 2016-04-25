class CheckinsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @checkin = Checkin.create(JSON.parse(request.raw_post))
    render json: { id: @checkin.id }
  end
end
