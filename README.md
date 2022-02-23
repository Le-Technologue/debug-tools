# debug-tools
Bash script that builds and launches an interactive docker container running debian, gdb, lldb and valgrind, with the proper parameters to make those usable (seccomp=unconfined).

- For your basic debugging needs when stranded on a machine missing those tools.
- Crucial to the 42 School student I currently am when using the school's Mac OS machines.

## Usage

- Launch Docker on your machine.
- / ! \ If you are at 42 School, you should set your Docker cache into your "goinfre" folder to prevent session overflows. / ! \
   - (Settings > Resources > Disk Image Location in the Docker Desktop application)
- Clone this repo wherever you like.
- Use the script inside the repo like this :

macOS\
`./dbg-tools -h`\
`./dbg-tools [-b] [work directory]`

Linux\
`./dbg-tools -h|--help`\
`./dbg-tools [-b|--build] [work directory]`

- Drink a coffee while the image builds.
- When your container's prompt appears it is done !
- Recompile your project for Linux through the container.
- enjoy debugging in your GNU enclave (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧

  - If you don't specify a work directory, your host machine $HOME folder will seamlessly mount to /home in your container.
  - If your image is already built, building will be skipped. If you wish to rebuild your image, use the '-b' option.

## Interest

- Using Valgrind and gdb on macOS.
  - You can debug threads and forks with ease with gdb ! https://github.com/Le-Technologue/debug-tools/wiki
- Debugging with the latest version of lldb on macOS.
  - No need to retype the arguments of your program after each "r" command in lldb. You can type them ordinarily after your program path when you launch lldb and use a single "r" instruction in lldb to keep using those.
  - Lifesaving for projects like push_swap that might need long lists of numbers as parameters, and/or need those generated by another program that can't be called within lldb, like shuf().
