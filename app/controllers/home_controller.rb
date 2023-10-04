class HomeController < ApplicationController
  def index
    @pots = Pot.all
  end

  def about
      @pots = Pot.all
  
  end

 # def cancel_class
  #  @cancel_class = Pot.destroy
   # redirect_to pots_url, notice: 'You have cancelled this class'
 # end
#def trash_em
 # @trash_em = Pot.destroy
 # redirect_to pots_url, notice: 'Class Bookign Successfully Cancel'
#end

def trash_em_all
    @trash_em_all = Pot.all.destroy_all
    redirect_to pots_url, notice: 'All Classes Were Successfully Canceled.'
  end

  
end
