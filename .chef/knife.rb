base_dir = File.join(File.dirname(File.expand_path(__FILE__)), '..')

log_level                :info
log_location             STDOUT
node_name                'pivotal'
client_key               File.join(base_dir, '.chef', 'private.pem')
syntax_check_cache_path  File.join(base_dir, '.chef', 'syntax_check_cache')
cookbook_path            [File.join(base_dir, 'cookbooks')]

chef_server_url          'https://adeel-chef-automate-server-rd6xvrd8i5milcxh.us-east-2.opsworks-cm.io/organizations/default'
trusted_certs_dir        File.join(base_dir, '.chef', 'ca_certs')
