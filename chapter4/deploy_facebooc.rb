package ['libsqlite3-dev', 'sqlite3']

execute 'download_facebooc_from_source' do
  command 'wget https://github.com/jserv/facebooc/archive/master.zip'
  cwd '/opt'
  user 'root'
  creates '/opt/master.zip'
  notifies :run, 'execute[extract_facebook_app]', :immediately
end


execute 'extract_facebook_app' do
  command 'unzip master.zip  && touch /opt/.facebooc_compile'
  cwd '/opt'
  user 'root'
  action :nothing
end


execute 'compile_facebooc' do
  command 'make all && rm /opt/.facebooc_compile'
  cwd '/opt/facebooc-master'
  user 'root'
  only_if 'test -f /opt/.facebooc_compile'
  action :run
end


execute 'run_facebooc' do
  command 'bin/facebooc 16000 &'
  cwd '/opt/facebooc-master'
  user 'root'
  not_if 'netstat -an | grep 16000 | grep -i listen'
  action :run
end
