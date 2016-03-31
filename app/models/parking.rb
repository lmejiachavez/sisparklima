class Parking < ActiveRecord::Base
    has_attached_file :cover, styles: { medium: "1280x720>", thumb: "800x600>" }
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
    has_many :reservations
    
end
