class CreateShortUrls < ActiveRecord::Migration
  def change
    create_table :short_urls do |t|
      t.text :url
      t.text :short_code

      t.timestamps
    end
  end
end
