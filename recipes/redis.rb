#
# Cookbook Name:: stackdriver
# Recipe:: default
#
# Copyright (C) 2013 TABLE_XI
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

include_recipe 'stackdriver'

case node['platform']
when 'rhel', 'centos', 'amazon'
  package 'hiredis'
when 'ubuntu'
  package 'libhiredis0.10'
end

template '/opt/stackdriver/collectd/etc/collectd.d/redis.conf' do
  mode 0644
  variables ({
    :nodename => node[:stackdriver][:redis][:nodename],
    :host => node[:stackdriver][:redis][:host],
    :port => node[:stackdriver][:redis][:port],
    :timeout => node[:stackdriver][:redis][:timeout],
  })
  notifies :restart, 'service[stackdriver-agent]', :delayed
end

