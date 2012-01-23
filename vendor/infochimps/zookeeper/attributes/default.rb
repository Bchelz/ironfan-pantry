
default[:zookeeper][:cluster_name]           = node[:cluster_name]

#
# Locations
#

default[:zookeeper][:home_dir]               = '/usr/lib/zookeeper'
default[:zookeeper][:conf_dir]               = '/etc/zookeeper'
default[:zookeeper][:log_dir]                = '/var/log/zookeeper'
default[:zookeeper][:data_dir]               = '/var/zookeeper'

default[:zookeeper][:client_port]            = '2181'
default[:zookeeper][:jmx_dash_port]          = '2182'
default[:zookeeper][:leader_port]            = '2888'
default[:zookeeper][:election_port]          = '3888'

#
# User
#

default[:zookeeper][:user]                   = 'zookeeper'
default[:users ]['zookeeper' ][:uid]         = 305
default[:groups]['zookeeper' ][:gid]         = 305

#
# Install
#

default[:zookeeper][:exported_jars]            = [ ::File.join(node[:zookeeper][:home_dir], "zookeeper.jar"), ]

#
# Services
#

default[:zookeeper][:server][:run_state] = :stop

#
# Tunables
#

# increased from 30 to 300, but you will want to turn this up even more on a
# production machine.
default[:zookeeper][:max_client_connections] = 300
