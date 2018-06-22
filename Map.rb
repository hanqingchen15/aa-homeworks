
class Map
  attr_reader :map

  def initialize
    @map = Hash.new
  end

  def set(key, value)
    existing_keys = @map.keys
    if existing_keys.include?(key) == false
      @map[key] = value
    end
  end

  def get(key)
    keys = @map.keys
    if keys.include?(key)
      return key
    else
      return nil
    end
  end

  def delete(key)
    @map.delete(key)
  end

  def show
    return @map
  end
end
