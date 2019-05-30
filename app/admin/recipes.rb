ActiveAdmin.register Recipe do

 permit_params :ingredient1, :ing1_quant, :ing1_metr, :ingredient2, :ing2_quant, :ing2_metr, :ingredient3, :ing3_quant, :ing3_metr, :ingredient4, :ing4_quant, :ing4_metr, :ingredient5, :ing5_quant, :ing5_metr, :total_calories, :total_proteins, :total_fats, :total_carbohydrates
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
