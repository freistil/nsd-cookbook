id = 'nsd'

default[id]['master']['fqdn'] = nil
default[id]['master']['ip_address'] = nil
default[id]['master']['contact'] = nil
default[id]['slaves'] = {}  # slave NS FQDN -> slave NS IP address
default[id]['zones'] = []

default[id]['packages']['master'] = %w(
  nsd
)

default[id]['packages']['slave'] = %w(
  nsd
)

default[id]['service']['name'] = 'nsd'
default[id]['service']['conf_dir'] = '/etc/nsd'

default[id]['service']['user'] = 'nsd'
default[id]['service']['uid'] = 500
default[id]['service']['group'] = 'nsd'
default[id]['service']['gid'] = 500
