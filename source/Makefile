help:
	@echo "\`make <target>\` where <target> is one of"
	@echo "  clean			clean directory"
	@echo "  clr			compile, link and run specified file e.g. make clr i=msg"
	@echo "  dis			disassemble a program e.g. make dis i=msg"

clean:
	@rm -rf *.o *.out

clr:
	@nasm -felf64 $(i).asm -o $(i).o && ld -o $(i).out $(i).o
	@chmod +x $(i).out && ./$(i).out

dis:
	@ndisasm -b 64 $(i).out > dis_$(i).asm
