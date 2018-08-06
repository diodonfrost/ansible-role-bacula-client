# Bacula-client install check

control 'install-01' do
  impact 1.0
  title 'Bacula-client package'
  desc 'Bacula-client should be installed'
  describe package('bacula-client') do
    it { should be_installed }
  end
end
