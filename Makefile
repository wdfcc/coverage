cov.o:cov.c
	@gcc -c cov.c
all:cov.o
	@gcc -fsanitize-coverage=trace-pc test.c cov.o -g -o test
.PHONY:clean
clean:
	@rm -rf cov.o test
