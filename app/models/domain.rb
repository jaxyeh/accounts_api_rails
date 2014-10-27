require 'resolv'

class Domain < ActiveRecord::Base

  validates :account_id, :presence => true
  validates :hostname, :presence => true, :uniqueness => true
  validates :origin_ip_address, :presence => true, :format => { :with => Resolv::IPv4::Regex }

  has_one :account, dependent: :destroy

end
