class TopController < ApplicationController
  def index
    @tubuyakis = Tubuyaki.all
  end
end
