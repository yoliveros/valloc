main := $(wildcard *.c)
exe := valloc
out := out
dist := dist
c_version := c17
CC := gcc
dev_flags := -g -Wall -Wextra -pedantic -std=$(c_version)
prod_flags := -O2 -Wall -std=$(c_version)


build: $(main)
	@mkdir -p $(out)
	@$(CC) $(main) -o $(out)/$(exe) $(dev_flags)

exec: 
	$(out)/./$(exe)

run: build exec

dist: $(main)
	@mkdir -p $(dist)
	@$(CC) $(main) -o $(dist)/$(exe) $(prod_flags)

clean:
	@rm -rf $(out)
	@rm -rf $(dist)
