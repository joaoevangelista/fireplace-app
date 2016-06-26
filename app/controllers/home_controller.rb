# Index page controller
class HomeController < ApplicationController
  def index
    @park_name = Rails.configuration.x.park['park_name']
  end
end
