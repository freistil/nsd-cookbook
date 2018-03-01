#
# nsd_record "www" do
#   action :create
#   type "A"
#   ip_address "10.0.0.1"
# end
#
property :name, String, name_property: true
property :zone, String
property :type, String, default: "A"
property :ip_address, String
property :preference, Integer
property :real_name, String

action_class do
  include NsdCookbook::Zone
end

action :create do
  add_record(
    name: new_resource.name,
    zone: new_resource.zone,
    type: new_resource.type,
    ip_address: new_resource.ip_address,
    preference: new_resource.preference,
    real_name: new_resource.real_name,
  )
end
