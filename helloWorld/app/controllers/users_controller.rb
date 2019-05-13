class UsersController < ApplicationController

  def list

     users = ["Alex","john", "jane"]
    @random_user   = users.sample     # @random_user instence variable we can access in view

      @count = 0
     @count1 =0
     for i in 1..20
       if (i % 2==0)
         @count = @count +1
       else
         @count1 = @count1 + 1
       end
     end

  end


end
