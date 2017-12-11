require 'spec_helper'
describe 'libnss_ldap' do
  context 'with default values for all parameters' do
    it { should contain_class('libnss_ldap') }
  end
end
