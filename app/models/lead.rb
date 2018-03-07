class Lead < ApplicationRecord
	has_one :qualified_leads

	def self.convert_to_qualified_data(lead_ids)
		unless lead_ids.nil?
			lead_ids.each do |lead_id|
				QualifiedLead.create!(lead_id: lead_id)
			end
		end
	end
end
