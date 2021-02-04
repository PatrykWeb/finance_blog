class Category < ApplicationRecord
  has_many :pages

  scope :visible, -> {where(:visible => true)}
  scope :unvisible, -> {where(:visible => false)}
  scope :sort_asc, -> {order("categories.position ASC")}
  scope :latest_category, -> {order("categories.created_at DESC")}

end
