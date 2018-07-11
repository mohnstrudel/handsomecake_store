class Front::StaticPagesController < FrontController

  def home
    @request = Request.new
  end
end
