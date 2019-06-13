all:
	make -C src
test:
	@make -s -C src test
clean:
	make -C src    clean
	make -C doc    clean
.PHONY:	doc
doc:	
	make -C doc
