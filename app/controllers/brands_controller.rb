class BrandsController < ApplicationController

  def index
    @brands = Brand.all.order("title ASC")
  end

  def new

  end

  def show
    
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
