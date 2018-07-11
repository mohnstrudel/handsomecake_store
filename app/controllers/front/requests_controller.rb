class Front::RequestsController < FrontController
  def create

    @request = Request.new(request_params)

    respond_to do |format|
      if @request.save
        format.js
        # @request.send_notifications
        RequestMailer.notify_admin(@request).deliver_now
      else
        format.js { render partial: 'fail' }
        
      end
    end
  end

  private

  def request_params
    params.require(:request).permit(:name, :email, :phone)
  end
end
