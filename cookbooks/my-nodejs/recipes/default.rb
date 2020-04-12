#
# Cookbook:: nodejs
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Using bash script to install nodejs
execute 'instal_nodejs' do
  action :run
  user 'root'
  cwd '/tmp'
  command  'apt update -y && apt install nodejs -y && apt install npm -y'
end
