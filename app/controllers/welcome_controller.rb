class WelcomeController < ApplicationController
  def index
    @welcome_msg = 'Welcome from Rails'
  end
end
