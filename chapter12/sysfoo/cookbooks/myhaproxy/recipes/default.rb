all_web_nodes = search("node", "role:app")

members = [ ]

all_web_nodes.each do | web_node |

     member = {
        'hostname' => web_node['hostname'],
        'ipaddress' => web_node['ipaddress'],
        'port' => 8080,
        'ssl_port' => 8080
    }

  members.push(member)
end

node.default['haproxy']['members'] = members

node.default['haproxy']['incoming_port'] = 8080

include_recipe 'haproxy::default'
