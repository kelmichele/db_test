class Info < ApplicationRecord
	# acts_as_list :scope => :directory

  	belongs_to :lawyer
  	has_many :info_edits
  	# has_many :admin_users, :through => :info_edits
	
  	# scope :visible, lambda { where(:visible => true) }
  	# scope :invisible, lambda { where(:visible => false) }
  	# scope :sorted, lambda { order("position ASC") }
  	# scope :newest_first, lambda { order("created_at DESC") }
	
  	# CONTENT_TYPES = ['text', 'HTML']
end
