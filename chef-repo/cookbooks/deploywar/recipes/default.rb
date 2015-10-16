#
# Cookbook Name:: deploywar
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

package "java-1.7.0-openjdk" do
	action :install
end

package "java-1.7.0-openjdk-devel" do
	action :install
end

execute "delete" do
command 'rm -rf tomcat7.tar.gz'
end

execute "downlaod tomcat" do
command 'wget -O /usr/local/tomcat7.tar.gz http://www.us.apache.org/dist/tomcat/tomcat-7/v7.0.64/bin/apache-tomcat-7.0.64.tar.gz'

end

execute "extract tomcat" do
command 'tar -zxf /usr/local/tomcat7.tar.gz -C /usr/local/'
end

execute "delete" do
command 'rm -rf tomcat7'
end
execute "tomcat 7 folder create" do
command 'mv /usr/local/apache-tomcat-7.0.64 /usr/local/tomcat7'
end


cookbook_file '/usr/local/tomcat7/webapps/httpsessionlogin.war' do
source 'httpsessionlogin.war'
mode '0755'
owner 'root'
end

execute "tomcat 7 start" do
command '/usr/local/tomcat7/bin/startup.sh'
end
