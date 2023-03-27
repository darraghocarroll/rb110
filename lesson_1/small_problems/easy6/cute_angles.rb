DEGREE = "\xC2\xB0"

def dms(float)
  total_seconds = (float * 60).round 
  degrees, remaining_seconds = total_seconds.divmod(60)
  minutes, seconds = remaining_seconds.divmod(60)
  format(%(#{degrees}#{DEGREE}%02d'%04d"), minutes, seconds)
end

p dms(76.73)
