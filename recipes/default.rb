#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright (C) 2013 Scott Macfarlane
# 
# All rights reserved - Do Not Redistribute
#
ruby_block "compile-motd" do
  block do
    ::File.open("/etc/motd", "w") do |f|
      f << "*" * 80
      f << "\n"
      Dir.glob("/etc/motd.d/*").each do |file|
        f << ::File.read(file)
      end
      f << "*" * 80
      f << "\n"
    end
  end
  action :nothing
end

directory "/etc/motd.d" do
  action :create
end