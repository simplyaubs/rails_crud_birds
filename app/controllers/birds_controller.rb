class BirdsController < ApplicationController

  def index
    @bird = Bird.new
    @birds = Bird.all
  end

  def create
    @bird = Bird.create(bird_params)
    if @bird.save
      redirect_to birds_path
    else
      render :index
    end
  end

  private
  def bird_params
    params.require(:bird).permit(:name, :color)
  end
end