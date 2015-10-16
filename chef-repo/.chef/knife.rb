# See https://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "kirtiazad10"
client_key               "#{current_dir}/kirtiazad10.pem"
validation_client_name   "infy23-validator"
validation_key           "#{current_dir}/infy23-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/infy23"
cookbook_path            ["#{current_dir}/../cookbooks"]
