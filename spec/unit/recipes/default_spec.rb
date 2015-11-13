#
# Cookbook Name:: tdd-demo
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

# Chefspec examples can be found at
# http://sethvargo.github.io/chefspec/
describe 'tdd-demo::default' do
  context 'rhel-6.5' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(
        platform: 'redhat',
        version: '6.5'
      ).converge(described_recipe)
    end

    it 'creates the motd' do
      expect(chef_run).to create_file('/etc/motd')
      expect(chef_run).to render_file('/etc/motd').with_content(/Chef Managed System/)
    end
  end

  context 'rhel-7.0' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new(
        platform: 'redhat',
        version: '7.0'
      ).converge(described_recipe)
    end

    it 'creates the motd' do
      expect(chef_run).to create_file('/etc/motd')
      expect(chef_run).to render_file('/etc/motd').with_content(/Chef Managed System/)
    end
  end
end
