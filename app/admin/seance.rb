ActiveAdmin.register Seance do

  menu priority: 2
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :title, :description, :number_of_people, :girl_only, :start_at, :user_id, :sport_id, :address, :validated_at

	index do
		selectable_column
		column :id
		column :sport_id
		column :title
		column :start_at
		column "User" do |seance|
			id = seance.user.email
		end

		column :address
	  # column :validated_at
	  actions
	end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
