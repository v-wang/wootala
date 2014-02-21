class Biofeed < ActiveRecord::Base
belongs_to :user
  
has_attached_file :image,
:styles => { :medium => "x300", :thumb => "x100" },
:default_url => "postgres://lagrdhsvtavyse:bM8zEjcfLBj0mxBJc_2c5Kxnay@ec2-54-204-47-58.compute-1.amazonaws.com:5432/d4p1djcs546f2o",
:storage => :s3,
:bucket => ENV['S3_BUCKET_NAME'],
:s3_credentials => S3_CREDENTIALS,
:s3_host_name => 's3-eu-west-1.amazonaws.com'
end