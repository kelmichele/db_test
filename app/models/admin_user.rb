class AdminUser < ApplicationRecord
	# has_secure_password
  	has_and_belongs_to_many :lawyers
  	has_many :info_edits
  	# has_many :infos, :through => :info_edits
end
