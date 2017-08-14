user 'deploy' do 
  uid 5001
  home '/home/deploy'
  action :create
  password '$1$Ze1eJK3R$j5I0NRP5WxbZAaeXcfYW7/'
end


package ['tree','git','ntp','wget','unzip' ]

user 'dojo' do 
  action :remove
end


service 'ntp' do 
  action [ :start, :enable]
end


file '/etc/motd' do 
  content '
      
         This server is a property of XYZ Inc. 
  
  '
  mode '0644'
  owner 'root'
  group  'root'
end 
