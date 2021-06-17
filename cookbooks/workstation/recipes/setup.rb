#
# Cookbook:: workstation
# Recipe:: setup
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'tree'
package 'ntp'

file '/etc/motd' do
	content "This server is the property of Alex"
	owner 'root'
	group 'root'
end

user 'user1' do
	comment 'user1'
	uid '123'
	home '/home/user1'
	shell '/bin/bash'
end

group 'admins' do
	members 'user1'
	append true
end
