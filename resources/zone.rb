#
# nsd_zone "example.com" do
#   action :create
# end
#
property :zone_name, String, name_property: true

zone_dir = ::File.join(node['nsd']['service']['conf_dir'], 'zones')

action_class do
  include NsdCookbook::Zone
end

action :create do
  template "#{zone_dir}/#{new_resource.zone_name}.zone" do
    source "resource_zone.erb"
    variables(
      records: zone_records(new_resource.zone_name)
    )
  end
end
