service node['tomcat']['service'] do 
   action [ :start, :enable]
end
