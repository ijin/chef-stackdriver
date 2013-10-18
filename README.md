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

`node[:stackdriver][:redis][:nodename]` - redis node name. default: "mynode"
`node[:stackdriver][:redis][:host]` - redis hostname. default: "localhost"
`node[:stackdriver][:redis][:port]` - redis port. default: 6379
`node[:stackdriver][:redis][:timeout]` - redis timeout. default: 2000


# Recipes

stackdriver::default - sets up the repository and installs the stackdriver agent.

# Author

Author:: TABLE XI (<sysadmins@tablexi.com>)

Author:: Kevin Reedy (<kevin@bellycard.com>)
