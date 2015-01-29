class ProductsController < ApplicationController

  def index
    @games = {
      "Monopoly" => "https://s3.amazonaws.com/movotoblog/2012/06/images/monopoly-board-1000w-houses.png",
      "Call of Duty" => "http://4.bp.blogspot.com/_v53r_bHAko4/TFWETfnrLbI/AAAAAAAAAAw/C8g0WQRhYTg/s1600/call-of-duty-4.jpg",
      "Chess" => "http://www.arlingtonchessclub.com/images/chess6a.jpg",
      "Contra" => "http://2.bp.blogspot.com/_lRMCZiwZqLQ/TKQ5syWk3NI/AAAAAAAAAIM/_mY5MAuDf-o/s1600/contra.JPG",
      "Halo" => "http://www.geeky-gadgets.com/wp-content/uploads/2012/10/Halo-41.jpeg"
    }
  end

  def detail


    @games = {
      "Monopoly" => "https://s3.amazonaws.com/movotoblog/2012/06/images/monopoly-board-1000w-houses.png",
      "Call of Duty" => "http://4.bp.blogspot.com/_v53r_bHAko4/TFWETfnrLbI/AAAAAAAAAAw/C8g0WQRhYTg/s1600/call-of-duty-4.jpg",
      "Chess" => "http://www.arlingtonchessclub.com/images/chess6a.jpg",
      "Contra" => "http://2.bp.blogspot.com/_lRMCZiwZqLQ/TKQ5syWk3NI/AAAAAAAAAIM/_mY5MAuDf-o/s1600/contra.JPG",
      "Halo" => "http://www.geeky-gadgets.com/wp-content/uploads/2012/10/Halo-41.jpeg"
    }

    # params is supplied by Rails.
    #    includes any variables for that request (page load)
    #    most usually, the id to display


    @game_name = params[:id]
    @game_image = @games[@game_name]

  end
end
