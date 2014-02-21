class Biofeed < ActiveRecord::Base
belongs_to :user
  
has_attached_file :image,
:styles => { :medium => "x300", :thumb => "x100" }
end