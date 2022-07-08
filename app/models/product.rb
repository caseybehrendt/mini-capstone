class Product < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..600 }

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  # def is_discounted
  #   if price < 10
  #     return "true"
  #   else
  #     return "false"
  #   end
  # end

  # def tax
  #   tax = Product.price * ".09"
  #   return tax
  # end

  # def total
  #   total = Product.price * tax
  #   return total
  # end
end
