# Bacula-client install check

control 'install-01' do
  impact 1.0
  title 'Bacula-client package'
  desc 'Bacula-client should be installed'
  describe package('bacula-client') do
    it { should be_installed }
  end
end

control 'install-02' do
  impact 1.0
  title 'Bacula-fd service'
  desc 'Bacula-fd service should be started and enable'
  describe service('bacula-fd') do
    it { should be_running }
    it { should be_enabled }
  end
end
