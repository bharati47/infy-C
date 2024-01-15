#
# Cookbook:: infy-C
# Recipe:: infy-R
#
# Copyright:: 2020, The Authors, All Rights Reserved.
file "/1086304-file" do
  content "Hello Everyone..!! Welcome to the Team"
  action :create
end
package "httpd" do
  action :install
end
service "httpd" do
  action [ :enable, :start ]
end
package "tree" do
  action :install
end
file "/var/www/html/index.html" do
  content "Hello Infoscions... Welcome to Configuration Management with Chef.. :)"
  action :create
end
file '/Attributes' do
  content "This is to get system Attributes
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end
