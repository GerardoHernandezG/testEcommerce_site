class Product < ApplicationRecord
	
	has_attached_file :image, :styles => { :medium => "800x600>", :thumb => "400x200" },
                      :default_url => "/images/:style/missing.png",
                      :url  => ":s3_domain_url",
                      :path => "public/images/:id/:style_:basename.:extension",
                      :storage => :fog,
                      :fog_credentials => {
                         provider: 'AWS',
                         aws_access_key_id: ENV["aws_access_key_id"],
                         aws_secret_access_key: ENV["aws_secret_access_key"],
                         region: 'us-east-2'
                      },
                      fog_directory: ENV["FOG_DIRECTORY"]

	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
