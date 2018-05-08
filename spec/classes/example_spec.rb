require 'spec_helper'

describe 'kerberos_server_installation' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "kerberos_server_installation class without any parameters" do
          it { is_expected.to compile.with_all_deps }

          it { is_expected.to contain_class('kerberos_server_installation::params') }
          it { is_expected.to contain_class('kerberos_server_installation::install').that_comes_before('kerberos_server_installation::config') }
          it { is_expected.to contain_class('kerberos_server_installation::config') }
          it { is_expected.to contain_class('kerberos_server_installation::service').that_subscribes_to('kerberos_server_installation::config') }

          it { is_expected.to contain_service('kerberos_server_installation') }
          it { is_expected.to contain_package('kerberos_server_installation').with_ensure('present') }
        end
      end
    end
  end

  context 'unsupported operating system' do
    describe 'kerberos_server_installation class without any parameters on Solaris/Nexenta' do
      let(:facts) do
        {
          :osfamily        => 'Solaris',
          :operatingsystem => 'Nexenta',
        }
      end

      it { expect { is_expected.to contain_package('kerberos_server_installation') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
