class StaticPagesController < ApplicationController
  def home
    @products = Product.all
    @appointments = Appointment.all
  end
end