name "lb"
description "HAProxy Load Balancers"
run_list "recipe[base]", "recipe[myhaproxy]", "recipe[chef-client]"
default_attributes({
  "chef_client" => { "interval"  =>  60,
                     "splay" => 20
                   }
})
