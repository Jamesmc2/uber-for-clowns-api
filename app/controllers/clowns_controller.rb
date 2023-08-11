class ClownsController < ApplicationController
  def index
    @clowns = Clown.all
    render :index
  end
end
