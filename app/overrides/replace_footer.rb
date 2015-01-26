Deface::Override.new(:virtual_path => 'spree/shared/_footer',
  :name => 'replace_footer',
  :replace => "#footer",
  :partial => 'shared/footer'
)
