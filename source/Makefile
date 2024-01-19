help:
	@echo "\`make <target>\` where <target> is one of"
	@echo "  clean			clean directory"
	@echo "  clr			compile, link and run specified file e.g. make clr i=welcome"
	@echo "  dis			disassemble a program e.g. make dis i=welcome"

clean:
	@rm -rf *.o

clr:
	@nasm -felf64 $(i).asm -o $(i).o && ld -o $(i) $(i).o
	@chmod +x $(i) && ./$(i)

	@# nasm -felf64 welcome.asm -o welcome.o && ld -o welcome welcome.o
	@# chmod +x welcome && ./welcome

dis:
	@ndisasm -b 64 $(i) > dis_$(i).asm
