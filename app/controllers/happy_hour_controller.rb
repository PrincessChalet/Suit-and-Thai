class HappyHourController < ApplicationController
    
    #turns on happy hour
    
    def index
        @HappyHour = HappyHour.new(happyhour_params)
        
          apply_HH  do |format|
       if HappyHour.index(happyhour_params)
              format.html { redirect_to @manager, notice: 'Happy Hour was successfully updated.' }
               format.json { render :show, status: :ok, location: @HappyHour }

                    end
    end

        #generates coupon for free item
    def coupons
        
        2.in(10) do
            puts "Congratulations! You've won a free desert item."
        
        
    #count for successful paid outs
    #at 5,
    
    Coupons.configure do |config|
        config.generator = proc do
            token = SecureRandom.hex[0, 4].upcase
            "AWESOME-#{token}" #the name of the generated coupon
                                end
                        end
                end
        end
    

    
end
