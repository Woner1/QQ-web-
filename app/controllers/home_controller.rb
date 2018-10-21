class HomeController < ApplicationController
  def create
    ToMailer.sendemail().deliver
  end




  def index
    #ToMailer.sendemail().deliver
  end
  def show
    @show_id=params["id"];
  end
  def test
    
  end
  def new_song

  end



end
