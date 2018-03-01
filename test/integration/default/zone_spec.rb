describe file("/etc/nsd/zones/example.com.zone") do
  it { should exist }
  its(:content) { should match /www\s*IN\s*A\s*1.2.3.4/ }
  its(:content) { should match /^\s*IN\s*MX\s*10\s+mx1/ }
  its(:content) { should match /^\s*IN\s*MX\s*20\s+mx2/ }
  its(:content) { should match /blog\s*IN\s*CNAME\s*www/ }
end
