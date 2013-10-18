default[:stackdriver][:api_key] = ''
default[:stackdriver][:config_collectd] = true
default[:stackdriver][:gpg_key] = 'https://www.stackdriver.com/RPM-GPG-KEY-stackdriver'
case node[:platform]
when 'amazon'
  default[:stackdriver][:repo_url] = 'http://repo.stackdriver.com/stackdriver-amazonlinux.repo'
  default[:stackdriver][:config_path] = '/etc/sysconfig/stackdriver'
when 'redhat', 'centos'
  default[:stackdriver][:repo_url] = 'http://repo.stackdriver.com/stackdriver.repo'
  default[:stackdriver][:config_path] = '/etc/sysconfig/stackdriver'
when 'ubuntu'
  case node[:platform_version]
  when '10.04'
    default[:stackdriver][:repo_url] = 'http://repo.stackdriver.com/apt'
    default[:stackdriver][:repo_dist] = 'lucid'
    default[:stackdriver][:config_path] = '/etc/default/stackdriver-agent'
  when '12.04', '12.10'
    default[:stackdriver][:repo_url] = 'http://repo.stackdriver.com/apt'
    default[:stackdriver][:repo_dist] = 'precise'
    default[:stackdriver][:config_path] = '/etc/default/stackdriver-agent'
  end
end

default[:stackdriver][:nginx][:status_url] = 'http://localhost/nginx_status'
default[:stackdriver][:nginx][:user] = nil
default[:stackdriver][:nginx][:password] = nil

default[:stackdriver][:redis][:nodename] = "mynode"
default[:stackdriver][:redis][:host] = "localhost"
default[:stackdriver][:redis][:port] = 6379
default[:stackdriver][:redis][:timeout] = 2000

