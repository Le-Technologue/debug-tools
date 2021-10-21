# debug-tools
Barebones script that builds and launches an interactive docker container running debian, lldb and valgrind, with the proper parameters to make those usable (seccomp=unconfined).

- For your basic debugging needs when stranded on a linuxless machine.
- Crucial to the 42 School student I currently am when using the school's Mac OS machines.

## Usage

`./dbg-tools -h|--help`
`./dbg-tools [-b|--build] [folder]`

- drink a coffee while the image builds
- recompile your project for Linux through the container
- enjoy debugging in your GNU enclave (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧

## Interest

- Using Valgrind on Mac OS.
- Debugging with the latest version of lldb.
  - No need to retype the arguments of your program after each "r" command in lldb. You can type them ordinarily after your program path when you launch lldb and use a single "r" instruction in lldb to keep using those.
  - Lifesaving for projects like push_swap that takes long lists of numbers as parameters, and/or need those generated by another program like shuf().
