class Category < ApplicationRecord
  has_many :pages

  scope :visible, -> lambda{where(:visible => true)}
  scope :unvisible, -> lambda{where(:visible => false)}
  scope :sort_asc, -> lambda{order("categories.position ASC")}
  scope :latest_category, -> lambda{order("categories.created_at DESC")}

end
