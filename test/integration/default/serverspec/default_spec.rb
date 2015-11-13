require 'spec_helper'

describe 'tdd-demo::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe file('/etc/motd') do
    it { should exist }
    it { should be_file }
    its(:content) { should match(/Chef Managed System/) }
  end
end
