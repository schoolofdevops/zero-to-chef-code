#
# Cookbook Name:: myhaproxy
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.
node.default['haproxy']['members'] = [{
     "hostname" => "node1",
     "ipaddress" => "172.0.101.10",
     "port" => 8080,
     "ssl_port" => 8080
   },
   {
    "hostname" => "node2",
    "ipaddress" => "172.0.101.11",
    "port" => 8080,
    "ssl_port" => 8080
  }]


node.default['haproxy']['incoming_port'] = 8080


include_recipe 'haproxy::default'
