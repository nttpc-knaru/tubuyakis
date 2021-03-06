class TubuyakisController < ApplicationController
  def index
    @tubuyakis = Tubuyaki.all
  end

  def new
    @tubuyaki = Tubuyaki.new
  end

  def create
    #Tubuyaki.create(tubuyakis_params)
    @tubuyaki = Tubuyaki.new(tubuyakis_params)
    if @tubuyaki.save
      redirect_to root_path, notice: "つぶやきを投稿しました"
    else
      render 'new'
    end
  end

  def edit
    @tubuyaki = Tubuyaki.find(params[:id])
  end

  def update
    @tubuyaki = Tubuyaki.find(params[:id])
    @tubuyaki.update(tubuyakis_params)
    redirect_to root_path
  end

  def destroy
    @tubuyaki = Tubuyaki.find(params[:id])
    @tubuyaki.destroy
    redirect_to root_path
  end

  def confirm
    @tubuyaki = Tubuyaki.new(tubuyakis_params)
  end

  private
    def tubuyakis_params
      params.require(:tubuyaki).permit(:content)
    end

end
