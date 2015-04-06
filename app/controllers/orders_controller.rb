class OrdersController < ApplicationController


  def index
    @orders = Order.all.order("created_at DESC")
  end

  def new

  end

  def show
    
  end

  def soso
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
