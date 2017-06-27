name "sample"
description "Sample Env File"
cookbook "xyz", "= 1.0.0"
default_attributes({
  "xyz" => { "sub1"  => {
                 "sub2" => 'pqr'}
              }
})
