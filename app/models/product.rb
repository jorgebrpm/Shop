class Product < ActiveRecord::Base
	validates :name, :presence => true, :uniqueness => true, :length => { :maximum => 255 }
	validates :description, :presence => true
	validates :registered_at, :presence => true
	validates :manufacturer, :presence => true
	validates :stock, :presence => true, :numericality => { :greater_than_or_equal_to => 0 }
end
