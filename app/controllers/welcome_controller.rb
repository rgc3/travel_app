class WelcomeController < ApplicationController
  def index
  	@homeland = 'United States'
  	@countries = ['Brazil', 'Thailand', 'Italy']
  end

  def about
  end
end
