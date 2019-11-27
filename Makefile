all: nhe.gen.hfst
	
nhe.gen.hfst: nhe.lexc.hfst nhe.twol.hfst
	hfst-compose-intersect -1 nhe.lexc.hfst -2 nhe.twol.hfst -o $@

nhe.twol.hfst: nhe.twol
	hfst-twolc $< -o $@

nhe.lexc.hfst: nhe.lexc
	hfst-lexc $< -o $@
