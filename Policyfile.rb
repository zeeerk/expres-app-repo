# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'opsworks-demo-webserver'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list  'chef-client',
          'my-nodejs',
		  'my-mongodb',
		  'express-app',
		  'populate-db',
		  'db-crud'
# add 'ssh-hardening' to your runlist to fix compliance issues detected by the ssh-baseline profile

# Specify a custom source for a single cookbook:
cookbook 'my-nodejs', path: './cookbooks/my-nodejs'
cookbook 'my-mongodb', path: './cookbooks/my-mongodb'
cookbook 'express-app', path: './cookbooks/express-app'
cookbook 'populate-db', path: './cookbooks/populate-db'
cookbook 'db-crud', path: './cookbooks/db-crud'

# Policyfile defined attributes

# Define audit cookbook attributes
default["opsworks-demo"]["audit"]["reporter"] = "chef-server-automate"
default["opsworks-demo"]["audit"]["profiles"] = [
  {
    "name": "DevSec SSH Baseline",
    "compliance": "admin/ssh-baseline"
  }
]
