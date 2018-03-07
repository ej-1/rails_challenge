require 'pry'
class LeadsController < ApplicationController

	def index
		@leads = Lead.all
		@qualified_leads = QualifiedLead.all
		render template: "index"
	end

	def convert_to_qualified_data
		lead_ids = lead_params[:lead_ids].map(&:to_i)# map should be a helper method.
		lead_ids.delete(0)# delete should not be implemented.
		Lead.convert_to_qualified_data(lead_ids)
															
	end

  def lead_params
    params.require(:post)#.permit(:lead_ids)
  end
end
