class Admin::OpeningsController < ApplicationController
  def index
    @openings = Opening.all.paginate(:per_page => 20, :page => params[:page])
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def remove
  end

  def destroy
  end

end
