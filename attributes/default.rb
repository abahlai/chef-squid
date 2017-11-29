default['squid']['port'] = 3128
default['squid']['packages'] = ['squid', 'apache2-utils']
default['squid']['config_file'] = '/etc/squid/squid.conf'
default['squid']['timeout'] = '10'
default['squid']['acls_databag_name'] = 'squid_acls'
default['squid']['coredump_dir'] = '/var/spool/squid'

default['squid']['localnets'] = ['10.0.0.0/8', '172.16.0.0/12', '192.168.0.0/16']
default['squid']['ssl_ports'] = [443, 563, 873]
default['squid']['safe_ports'] = [80, 21, 443, 70, 210, '1025-65535', 280, 488, 591, 777, 631, 873, 901]
default['squid']['http_access_deny_all'] = true

default['squid']['enable_ncsa']        = true
default['squid']['ncsa_auth_path']     = '/usr/lib/squid/basic_ncsa_auth'
default['squid']['ncsa_auth_passlist'] = '/etc/squid/squidusers'
default['squid']['ncsa_users']         = 'proxy_users'
default['squid']['ncsa_realm']         = 'Web-Proxy'
