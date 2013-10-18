# stackdriver cookbook

Handles the setup and installation of the stackdriver agent.

# Requirements

Supports CentOS, RHEL, Amazon, and Ubuntu linux distributions.

# Usage

add stackdriver::default to your run list.

# Attributes

repo_url - location of the package repository.
api_key - set the api key from your stackdriver account.
config_collectd - should stackdriver handle collectd.conf autogeneration.  Default is true.

## Plugin Attributes

`node[:stackdriver][:nginx][:repo_url]` - nginx stub status url. default: http://localhost/nginx_status
`node[:stackdriver][:nginx][:user]` - nginx stub status username. default: nil
`node[:stackdriver][:nginx][:password]` - nginx stub status password. default: nil


# Recipes

stackdriver::default - sets up the repository and installs the stackdriver agent.
stackdriver::nginx - installs the stackdriver nginx plugin

# Author

Author:: TABLE XI (<sysadmins@tablexi.com>)

Author:: Kevin Reedy (<kevin@bellycard.com>)

Author:: Michael H. Oshita (<ijinpublic+github@gmail.com>)
