#
# Cookbook:: squid
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

apt_update 'update'

package node['squid']['packages']

template node['squid']['config_file'] do
  source 'squid.conf.erb'
  notifies :restart, 'service[squid]'
  mode '644'
  variables(
    lazy do
      {
        localnets: node['squid']['localnets'],
        safe_ports: node['squid']['safe_ports'],
        ssl_ports: node['squid']['ssl_ports'],
      }
    end
  )
end

file node['squid']['ncsa_auth_passlist'] do
  content ''
  mode '0440'
  owner 'proxy'
  group 'proxy'
end

service 'squid' do
  supports restart: true, status: true, reload: true
  action [:enable, :start]
  retries 5
end