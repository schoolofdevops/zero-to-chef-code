
remote_file node['tomcat']['deploy']['file_path'] do
  source node['tomcat']['deploy']['url']
  owner node['tomcat']['user']
  group node['tomcat']['group']
  mode '0755'
  action :create
#  notifies :stop, "service[#{node['tomcat']['service']}]", :immediately
  notifies :delete, "directory[#{node['tomcat']['deploy']['context_path']}]", :immediately
end


directory node['tomcat']['deploy']['context_path'] do
  action :nothing
  recursive  true
  notifies :restart, "service[#{node['tomcat']['service']}]", :immediately
end

include_recipe "tomcat::service"
