default['tomcat']['deploy']['url'] =  'https://9-94848332-gh.circle-artifacts.com/0/tmp/circle-artifacts.9U1rN6X/sysfoo.war'
default['tomcat']['deploy']['path'] = '/usr/share/tomcat/webapps'
default['tomcat']['deploy']['filename'] = 'sysfoo.war'
default['tomcat']['deploy']['context'] = 'sysfoo'
#default['deploy'][''] =
default['tomcat']['deploy']['context_path'] = "#{node['tomcat']['deploy']['path']}/#{node['tomcat']['deploy']['context']}"
default['tomcat']['deploy']['file_path'] = "#{node['tomcat']['deploy']['path']}/#{node['tomcat']['deploy']['filename']}"
