class Admin::PositionsController < ApplicationController
  def index
    @positions = Position.all.paginate(:per_page => 20, :page => params[:page])
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new(params[:position])
    if @position.save
      redirect_to admin_positions_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @position = Position.find(params[:id])
    @position.destroy
    redirect_to admin_positions_path
  end

  def remove
    @position = Position.find(params[:id])
  end

end
