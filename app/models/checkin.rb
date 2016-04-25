class Checkin < ActiveRecord::Base
  def self.create(params)
    checkin = Checkin.new
    checkin.device_name = params["uid"]
    checkin.latitude = params["location"]["latitude"]
    checkin.longitude = params["location"]["longitude"]
    checkin.location_error = params["location"]["error"]
    checkin.save
    checkin
  end
end
