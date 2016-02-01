class WelcomeController < ApplicationController
  def index
  	@homeland = 'United States'
  	@countries = ['Brazil', 'Thailand', 'Italy']
  	@images = ['plane.png', 'brazil.jpg', 'thailand.jpg', 'venice.jpg'].shuffle
  	@united_states = {'capital-city' => 'Fresno', 'favorite_city' => 'Venice Beach', 
  		'favorite_state' => 'California', 'flag_colors' => ['red', 'white']}
  end

  def about
  	@color = params[:color]
  	@size = params[:size]
  end

  def contact
  end

end
