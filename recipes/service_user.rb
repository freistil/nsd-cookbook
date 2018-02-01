id = 'nsd'

service_user = node[id]['service']['user']
service_uid = node[id]['service']['uid']
service_group = node[id]['service']['group']
service_gid = node[id]['service']['gid']

group service_group do
  gid service_gid
  action :create
end

user service_user do
  uid service_uid
  group service_group
  shell '/bin/false'
  system true
  action :create
end
