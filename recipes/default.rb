db_names = node[:mysql_create_database][:db_names]
db_names.each do |db_name|
  bash "Creating database #{db_name}" do
    not_if("/usr/bin/mysql -uroot -p#{node[:mysql][:server_root_password]} -e'show databases' | grep #{db_name}", :user => 'root')
    user "root"
    code <<-EOM
      mysql -uroot -p#{node[:mysql][:server_root_password]} -e 'create database #{db_name}'
    EOM
  end
end