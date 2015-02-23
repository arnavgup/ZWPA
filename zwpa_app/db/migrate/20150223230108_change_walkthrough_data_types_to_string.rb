class ChangeWalkthroughDataTypesToString < ActiveRecord::Migration
  def change
  	change_column :walkthroughs, :other_businesses, :string
  	change_column :walkthroughs, :ownership, :string
  	change_column :walkthroughs, :waste_disposal_contract, :string
  	change_column :walkthroughs, :waste_management_cost, :string
  	change_column :walkthroughs, :loading_dock, :string
  	change_column :walkthroughs, :freight_elevators, :string
  	change_column :walkthroughs, :storage_space, :string
  	change_column :walkthroughs, :trash_hauler, :string
  	change_column :walkthroughs, :trash_hauler_contract, :string
  	change_column :walkthroughs, :contract_available, :string
  	change_column :walkthroughs, :annual_record, :string
  	change_column :walkthroughs, :buy_recycled, :string
  	change_column :walkthroughs, :green_cleaning_products, :string
  	change_column :walkthroughs, :mandated_recycling, :string
  	change_column :walkthroughs, :recycling_program, :string
  	change_column :walkthroughs, :recycling_stream, :string
  	change_column :walkthroughs, :current_compost, :string
  	change_column :walkthroughs, :past_compost, :string
  	change_column :walkthroughs, :generate_toner_ink, :string
  	change_column :walkthroughs, :recycle_toner_ink, :string
  	change_column :walkthroughs, :generate_CFLs, :string
  	change_column :walkthroughs, :recycle_CFLs, :string
  	change_column :walkthroughs, :generate_batteries, :string
  	change_column :walkthroughs, :recycle_batteries, :string
  	change_column :walkthroughs, :generate_computers, :string
  	change_column :walkthroughs, :recycle_computers, :string
  	change_column :walkthroughs, :generate_cellphones, :string
  	change_column :walkthroughs, :recycle_cellphones, :string
  	change_column :walkthroughs, :generate_tvs, :string
  	change_column :walkthroughs, :recycle_tvs, :string
  	change_column :walkthroughs, :generate_other_corded_equipment, :string
  	change_column :walkthroughs, :generate_furniture, :string
  	change_column :walkthroughs, :recycle_furniture, :string
  	change_column :walkthroughs, :generate_linens_uniforms, :string
  	change_column :walkthroughs, :recycle_linens_uniforms, :string
  	change_column :walkthroughs, :generate_construction_debris, :string
  	change_column :walkthroughs, :recycle_construction_debris, :string
  	change_column :walkthroughs, :generate_pallets, :string
  	change_column :walkthroughs, :recycle_pallets, :string
  	change_column :walkthroughs, :ZW_policy, :string
  	change_column :walkthroughs, :LEED, :string
  	change_column :walkthroughs, :recertify_LEED, :string
  	change_column :walkthroughs, :requesting_audit_services, :string

  end
end
