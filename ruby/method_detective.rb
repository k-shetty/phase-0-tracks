# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
#.swapcase for now

# "zom".<???>
# => “zoom”
#.insert

# "enhance".<???>
# => "    enhance    "
#.center for now

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
#.upcase

# "the usual".<???>
#=> "the usual suspects"
#.concat for now, .insert as well

# " suspects".<???>
# => "the usual suspects"
#.insert or .concat or .prepend or .rjust

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
#.chop

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
#.slice

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
#.squeeze

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
#.ord

# "How many times does the letter 'a' appear in this string?".<???>
# => 4