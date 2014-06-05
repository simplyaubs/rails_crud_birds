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

  def show
    @bird = Bird.find(params[:id])
  end

  def edit
    @bird = Bird.find(params[:id])
  end

  def update
    @bird = Bird.find(params[:id])
    @bird.update_attributes!(bird_params)

    redirect_to bird_path(@bird)
  end

  def destroy
    @bird = Bird.find(params[:id]).delete

    redirect_to birds_path
  end

  private
  def bird_params
    params.require(:bird).permit(:name, :color)
  end
end