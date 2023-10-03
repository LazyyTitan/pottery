class HomeController < ApplicationController
  def index
    @pots = Pot.all
  end

  def about
      @pots = Pot.all
  
  end
end
