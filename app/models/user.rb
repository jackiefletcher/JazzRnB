class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
   validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

   validates :avatar, :attachment_presence => true
   validates_with AttachmentPresenceValidator, :attributes => :avatar
   validates_with AttachmentSizeValidator, :attributes => :avatar, :less_than => 1.megabytes

   after_create :send_welcome_email

   private

   def send_welcome_email
     UserMailer.signup_confirmation(self).deliver_now
   end
end
