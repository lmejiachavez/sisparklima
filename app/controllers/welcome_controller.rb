class WelcomeController < ApplicationController
  def index
    @parkings=Parking.where("description LIKE ?", "%#{params[:search]}%")
  end
end
