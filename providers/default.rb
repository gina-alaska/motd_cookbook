action :create do
  filename = new_resource.name.gsub(/\W/, "_")
  t = template "/etc/motd.d/#{filename}" do
    cookbook "motd"
    source "motd.d.erb"
    mode 0644
    variables({
      message: new_resource.message
    })
  notifies :create, 'ruby_block[compile-motd]', :immediately
  end
end
