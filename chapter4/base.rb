user 'deploy' do
  uid 5001
  home '/home/deploy'
  manage_home  true
  password '$1$UigpUSrC$PVl.4i3ll/VBjO38/Lk2q0'
  action :create
end

package [ 'ntp', 'tree', 'ntp', 'unzip', 'wget' ]


user 'dojo' do
  action :remove
end


file '/etc/motd' do
  mode '0644'
  owner 'root'
  group 'root'
  content '

      This server is a property of XYZ Inc.

  '
end

service 'ntp' do
  action [ :start, :enable ]
end
