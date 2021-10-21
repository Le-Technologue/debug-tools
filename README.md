# debug-tools
Barebones script that builds and launches an interactive docker container running debian, lldb and valgrind, with the proper parameters to make those usable (seccomp=unconfined).

For your basic debugging needs when stranded on a linuxless machine.

Which makes it precious for the 42 School student I currently am.

## Usage

By default, your home folder will be mounted into the container at /host_home, giving you access to the files on your host machine through the container.

If you wish to access your host machine otherwise, you'll have to edit the options of the "-v" flag of the docker run instruction.

- bash ./run_dbg_tools.sh
- drink a coffee while the image builds
- enjoy your GNU enclave
  

