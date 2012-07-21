class AddVanityUrlToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :vanity_url, :string
  end
end
