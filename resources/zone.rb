#
# nsd_zone "example.com" do
#   action :create
# end
#
property :name, String, name_property: true

zone_dir = ::File.join(node['nsd']['service']['conf_dir'], 'zones')

action_class do
  include NsdCookbook::Zone
end

action :create do
  template "#{zone_dir}/#{new_resource.name}.zone" do
    source "nsd.zone.erb"
    owner 'root'
    group node['root_user']
    variables(
      zone: new_resource.name,
      master_fqdn: node['nsd']['master']['fqdn'],
      master_ip_address: node['nsd']['master']['ip_address'],
      master_contact: node['nsd']['master']['contact'],
      slaves: node['nsd']['slaves'],
      serial: ::DateTime.now.strftime('%Y%m%d01'),
      records: zone_records(new_resource.name),
      ttl: 600
    )
    mode 0o0644
  end
end
