class AddIpAddressToApiKey < ActiveRecord::Migration
  def change
    add_column :api_keys, :ip_address, :string
  end
end
