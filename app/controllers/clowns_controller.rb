class ClownsController < ApplicationController
  def index
    @clowns = Clown.all
    render :index
  end

  def show
    @clown = Clown.find_by(name: params[:name])
    render :show
  end
end
