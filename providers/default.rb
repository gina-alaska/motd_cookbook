action :create do
  t = template "/etc/motd.d/#{new_resource.name}" do
    cookbook "motd"
    source "motd.d.erb"
    mode 0644
    variables({
      message: new_resource.message
    })
  notifies :create, resources(:ruby_block => "compile-motd"), :immediately
  end
end
