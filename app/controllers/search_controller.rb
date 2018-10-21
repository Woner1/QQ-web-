class SearchController < ApplicationController
  def index
    @search=params[:search]
  end

  def show

      @songmid=params[:id]

  end
end
