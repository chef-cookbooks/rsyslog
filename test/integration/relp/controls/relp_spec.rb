control 'relp' do
  relp_pkg = os.family == 'suse' ? 'rsyslog-module-relp' : 'rsyslog-relp'

  describe package relp_pkg do
    it { should be_installed }
  end

  describe file '/etc/rsyslog.d/49-remote.conf' do
    its('content') { should match /'*.* :omrelp:10.0.0.45:20514\n'*.* :omrelp:10.1.1.33:20514;RSYSLOG_SyslogProtocol23Format/ }
  end
end
