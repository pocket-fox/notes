COMPILE=gcc
demo: demo.c
	$(COMPILE) $< -o $@ -lm

demo.o: demo.c demo.h
	$(COMPILE) -c $< -o $@

calc.o: calc.c
	$(COMPILE) -c $< -o $@

clean:
	rm demo calc.o demo.o

