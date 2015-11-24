#
# Cookbook Name:: tdd-demo
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

node.default['motd']['managed'] = true

file '/etc/motd' do
  content <<-EOF
    This is a Chef Managed System.  Please think twice about logging in!
    EOF
  only_if { node['motd']['managed'] }
end
