A Docker container for writing NASM x86 Assembly and C programs.

## How to use
1. Locate and download the [accompanying files](https://gist.github.com/ichux/713bad470794872b463060ed50f81e42)
by clicking on the `Download ZIP` section
2. Extract the `.zip`, rename it and `cd` into that directory through your terminal
3. Run `make bash` and this will create a container you can work with
3. Create a file `welcome.asm`
4. Run `nasm -felf64 welcome.asm -o welcome.o && ld -o welcome.out welcome.o`
5. Run `chmod +x welcome.out && ./welcome.out`
6. You should see your desired output printed on your terminal
7. OR, download the [files here](https://github.com/ichux/debian-nasm/tree/master/source) and follow the [README.md](https://github.com/ichux/debian-nasm/blob/master/source/README.md)
