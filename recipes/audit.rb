#
# Cookbook Name:: tdd-demo
# Recipe:: audit
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

control_group 'motd compliance' do
  control 'motd text warns of compliance' do
    describe file('/etc/motd') do
      it { should exist }
      it { should be_file }
      its(:content) { should match(/Chef Managed System/) }
    end
  end
end
