class Account < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => { case_sensitive: false }
  has_many :domains, foreign_key: :account_id

end
