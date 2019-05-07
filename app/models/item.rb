class Item < ApplicationRecord
  belongs_to :main_category, class_name: "Category", foreign_key: "category1_id", optional: true
  belongs_to :sub_category, class_name: "Category", foreign_key: "category2_id", optional: true

  class << self
    def item_name_search(query)
      rel = order("item_no")
      if query.present?
        rel = rel.where("item_name LIKE ?", "%#{query}%")
      end
      rel
    end

    def item_no_search(query)
      rel = order("item_no")
      if query.present?
        rel = rel.where("item_no LIKE ?", "%#{query}%")
      end
      rel
    end

    def item_category1_search(query)
      rel = order("item_no")
      if query.present?
        rel = rel.joins(:main_category).where("category_name LIKE ?", "%#{query}%")
      end
      rel
    end

    def item_category2_search(query)
      rel = order("item_no")
      if query.present?
        rel = rel.joins(:sub_category).where("category_name LIKE ?", "%#{query}%")
      end
      rel
    end
  end
end
