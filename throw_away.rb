#!/usr/bin/env ruby

require 'rubygems'
require 'active_ldap'

# Map the user class
class User < ActiveLdap::Base
    ldap_mapping :dn_attribute => 'uid', :prefix => 'ou=People', :classes => ['top']
    belongs_to :groups, :class_name => 'Group', :many => "memberUid", :primary_key => "uid"
end

class Group < ActiveLdap::Base
    ldap_mapping :classes => ['top'], :prefix => 'ou=Group'
    has_many :members, :class_name => "User", :wrap => "memberUid"
end

admin='stahnma'
    ActiveLdap::Base.setup_connection(
      :host => 'freyr.websages.com',
      :port => 636,
      :method => :ssl,
      :base => 'dc=websages,dc=com',
      :bind_dn => "uid=#{admin},ou=People,dc=websages,dc=com",
      :password => ENV['LDAP_PASSWORD'],
      :allow_anonymous => false)

#all_users = User.find(:all, '*')
#p all_users

stahnma = User.find('stahnma')
stahnma.gecos = [ 'Michael Stahnke'] 
stahnma.cn = [ 'Michael Stahnke' , 'stahnma' ] 
stahnma.save

p stahnma
