name "app"
description "Tomcat Application Servers"
run_list "recipe[base]", "recipe[tomcat]", "recipe[chef-client]", "recipe[sysfoo::deploy]"
default_attributes({
  "chef_client" => { "interval"  =>  120,
                     "splay" => 30
                   }
})
