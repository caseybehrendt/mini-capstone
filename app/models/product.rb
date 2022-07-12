class Product < ApplicationRecord
  belongs_to :supplier
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..600 }

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def images
    Image.where(product_id: id)
  end

  # def is_discounted
  #  if price <= 10
  #    return "true"
  #  else
  #    return "false"
  # end

  # def tax
  #   tax = Product.price * .09
  #     return tax
  # end

  # def total
  #   total = Product.price * tax
  #     return total
  # end
end
