local gmp = require 'gmp' ('libgmp')

local rand = gmp.types.randstate()

gmp.randinit_mt(rand)
gmp.randseed_ui(rand, os.time())

for i = 1,10 do
  print(gmp.urandomm_ui(rand, 100))
end

gmp.randclear(rand)
