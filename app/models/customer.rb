class Customer < ActiveRecord::Base
	# Relationships
	has_many :requests
	belongs_to :user
	
	accepts_nested_attributes_for :requests, reject_if: lambda { |request| request[:date].blank? }

	# Validations
	validates_presence_of :user_id
	validates_numericality_of :user_id, only_integer: true, greater_than: 0
	validates_presence_of :company_name

	# Scopes
	scope :alphabetical, -> { order('company_name') }

	# Methods
end
