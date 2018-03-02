nsd_record "www.example.com" do
  name "www"
  zone "example.com"
  type "A"
  ip_address "1.2.3.4"
end

nsd_record "example.com MX" do
  name "mx1"
  zone "example.com"
  type "MX"
  ip_address "2.3.4.5"
  preference 10
end

nsd_record "example.com MX 2" do
  name "mx2"
  zone "example.com"
  type "MX"
  ip_address "2.3.4.6"
  preference 20
end

nsd_record "blog.example.com" do
  name "blog"
  zone "example.com"
  type "CNAME"
  real_name "www"
end

nsd_record "blog.notanexample.com" do
  name "blog"
  zone "notanexample.com"
  type "A"
  ip_address "3.4.5.6"
end

nsd_zone "example.com" do
  contact "info@example.com"
end
