# ScientificFunctions
class String
  def sigfigs(num_places)
    value = BigDecimal(self).split
    result = value[1].to_i.round(num_places - value[1].length).to_s
    result = (".#{result}".to_d * (10.to_d**value[3])).to_s
    if value[0] == -1
      result = "-" << result
    end
    if value[3] > 0
      result.gsub!(".0","")
    end
    if (result.length < num_places) && (result.to_f >= 1) && (result.index(".").nil?)
      result = result << "."
      result = result.ljust(num_places + 1, "0")
    end
    return result
  end
end