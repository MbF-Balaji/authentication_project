 class User < ActiveRecord::Base
     devise :database_authenticatable, :registerable, :recoverable,
            :rememberable, :trackable, :validatable ,
            :omniauthable, :omniauth_providers => [:facebook]
     has_many :products 

     def self.from_omniauth(auth)
       where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
         user.provider = auth.provider
         user.uid = auth.uid
         user.password = Devise.friendly_token[0,20]
         if ["facebook"].include?(auth.provider)
           user.save(:validate => false)
         else
           user.email = auth.info.email
           user.save
         end
       end
     end
   end