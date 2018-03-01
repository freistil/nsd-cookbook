nsd_record "www.example.com" do
  name "www"
  zone "example.com"
  type "A"
  ip_address "1.2.3.4"
end

nsd_record "example.com MX" do
  zone "example.com"
  type "MX"
  ip_address "2.3.4.5"
end

nsd_record "www.notanexample.com" do
  name "www"
  zone "notanexample.com"
  type "A"
  ip_address "3.4.5.6"
end

nsd_zone "example.com"
