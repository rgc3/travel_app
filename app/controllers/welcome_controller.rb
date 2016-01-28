class WelcomeController < ApplicationController
  def index
  	@homeland = 'United States'
  	@countries = ['Brazil', 'Thailand', 'Italy']
  	@images = ['plane.png', 'brazil.jpg', 'thailand.jpg', 'venice.jpg']
  end

  def about
  	@color = params[:color]
  	@size = params[:size]
  end

end
