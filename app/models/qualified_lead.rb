class QualifiedLead < ApplicationRecord
	belongs_to :lead
	validates :lead_id, uniqueness: true
end
