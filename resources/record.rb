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

action_class do
  include NsdCookbook::Zone
end

action :create do
  add_record(
    zone: new_resource.zone,
    type: new_resource.type,
  )
end
