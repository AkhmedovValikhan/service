module OrdersHelper
  def pendings 
    @orders.where(status_id: 2)
  end
end
