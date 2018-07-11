class Front::StaticPagesController < FrontController

  def home
    @request = Request.new

    @title = "Store.Handsomecake.com - Магазин электронной техники по низким ценам."
    @description = "Самые низкие цены на электронную технику. Гарантия от производителя. Доставка со склада в Москве. ASUS ROG PG348Q по цене ниже рынка."
  end
end
