Deface::Override.new(:virtual_path => 'spree/home/index',
  :name => 'hide_latest_products',
  :remove => "#latest-products"
)
