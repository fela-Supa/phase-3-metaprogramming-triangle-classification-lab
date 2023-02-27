class Triangle
    attr_accessor :leng1, :leng2, :leng3
 
    def initialize(leng1,leng2, leng3)

      @leng1 = leng1
      @leng2 = leng2
      @leng3 = leng3
      raise TriangleError, "Ivalid" unless valid_triangle?

      
    end

  
    def kind
      return :equilateral if equilateral?
      return :isosceles if isosceles?
      return :scalene if scalene?
    end
  #private methods
    private
  
    def valid_triangle?
      length = [leng1, leng2, leng3]
      return false if length.include?(0)
      length.sort!
      length[0] + length[1] > length[2]
    end
  
    def equilateral?
      leng1 == leng2 && leng2 == leng3
    end
  
    def isosceles?
      leng1 == leng2 || leng2 == leng3 || leng3 == leng1
    end
  
    def scalene?
      leng1 != leng2 && leng2 != leng3 && leng3 != leng1
    end


  
  class TriangleError < StandardError
    # triangle error code

  end


end
