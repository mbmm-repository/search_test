class Category < ApplicationRecord
  has_many :main_category, class_name: "Item", foreign_key: "category1_id"
  has_many :sub_category, class_name: "Item", foreign_key: "category2_id"
end
