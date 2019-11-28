all: nhe.gen.hfst nhe.mor.hfstol
	
nhe.gen.hfst: nhe.lexc.hfst nhe.twol.hfst
	hfst-compose-intersect -1 nhe.lexc.hfst -2 nhe.twol.hfst -o $@

nhe.twol.hfst: nhe.twol
	hfst-twolc $< -o $@

nhe.lexc.hfst: nhe.lexc
	hfst-lexc $< -o $@

nhe.mor.hfst: nhe.gen.hfst
	hfst-invert $< -o $@

nhe.mor.hfstol: nhe.mor.hfst
	hfst-fst2fst -w $< -o $@
