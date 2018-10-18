class SearchController < ApplicationController
  def index
    @search=params[:search]
  end

  def show
  end
end
