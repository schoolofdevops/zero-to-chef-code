#
# Cookbook Name:: tomcat
# Recipe:: config
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

cookbook_file '/etc/tomcat/tomcat.conf' do 
  source 'tomcat.conf'
  owner 'tomcat'
  group 'tomcat'
  mode  0644
  action :create
  notifies :restart, 'service[tomcat]', :delayed
end
