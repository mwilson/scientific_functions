# ScientificFunctions
class String
  def sigfigs(num_places)
    result = String.new
    value = BigDecimal(self).split
    if num_places > value[1].length
      result = value[1].ljust(num_places, "0")
    else
      result = value[1].to_i.round(num_places - value[1].length).to_s.slice(0, num_places).to_i.to_s
      if num_places >= value[1].length
        result = result.ljust(value[1].length,"0")
      end
    end

    if value[3] < 0
      result = "0." << "0".rjust(value[3].abs,"0") << result
    end
    if value[3] == 0
      result = "0." << result
    end
    if value[3] > 0
      p1 = result.slice(0, value[3])
      if p1.length < value[3]
        p1 = p1.ljust(value[3],"0")
      end
      if p1.length < num_places
        result = p1 << "." << result.slice(value[3], result.length)
      else
        result = p1
      end
    end
    
    if value[0] == -1
      result = "-" << result
    end
    return result    
  end
end


