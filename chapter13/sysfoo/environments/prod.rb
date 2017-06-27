name "prod"
description "Production Environment"
cookbook "myhaproxy", "= 0.3.0"
default_attributes({
  "tomcat" => { "deploy"  => {
                 "url" => 'https://3-94848332-gh.circle-artifacts.com/0/tmp/circle-artifacts.6FJDzVq/schoolofdevops.war'}
              }
})

