class HomeController < ApplicationController
  def index
    UserMailer.account_activation(User.frist).deliver_now
  end
  def show
    
  end
  def test
    
  end
end
