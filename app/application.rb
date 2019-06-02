class Application

  def call(env)
    resp = Rack::Response.new
    
    num_1 = Kernel.rand(1..3)
    num_2 = Kernel.rand(1..3)
    num_3 = Kernel.rand(1..3)


    resp.write "<p>#{num_1}\n</p>"
    resp.write "<p>#{num_2}\n</p>"
    resp.write "<p>#{num_3}\n</p>"
 
    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
