bash "Creating database" do
  not_if("/usr/bin/mysql -uroot -p#{node[:mysql][:server_root_password]} -e'show databases' | grep #{node[:mysql_create_database][:db_name]}", :user => 'root')
  user "root"
  code <<-EOM
    mysql -uroot -p#{node[:mysql][:server_root_password]} -e 'create database #{node[:mysql_create_database][:db_name]}'
  EOM
end
