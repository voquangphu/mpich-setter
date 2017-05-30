# mpich-setter
Simple scripts for automatically setting MPICH for multiple machines 

## What mpi-setter provides
Using this program to setup MPICH provides the following benefits.
1. Configure and install MPICH for multiple machines in an automatic way, especially when the number of installing machines is
high.
2. Avoid installation complications (i.e. MPICH cannot run if the installation path is not the same accross all node machines)

## OS supported
Linux with sh or bash shell.

## System requirements
It is strongly advised that the program is run on a machine connected with the machines where MPICH is installed via LAN network
for smooth installation without network interruption.

## Configuration
There are 2 config files need to be setup in **conf** folder for each installation.

**hosts** contains details of the hosts in which to program is going to configure and install MPICH. As mpich-setter 
use SSH to login to the machines to be installed, host format can be express simply as used in bash shell 
(*user_name@hostname_or_ip -p port_number*)

****Notice:** user_name should have sudo privilege. For smooth installation, it is also advised to temporarily turn off sudo privilege 
password asking for users included in this file.

**path** contains the actual path in the system where mpich folder is created and installed. Please choose an empty or 
non-existent folder.

Sample configuration is already included in the files, which can be changed to match system configuration.

## Installation
By default, MPICH supports C, C++ and Fortran code. There are however options to disable support for unused code since the installation
is aborted if the appropriate compiler cannot be found and configured.

**run.sh:** default mode, configure all C, C++ and Fortran compilers.

**run_c_only.sh:** disable C++ and Fortran, use C compiler only.

**run_disable_c++.sh:** disable C++, use C and Fortran compilers only.

**run_disable_fortran.sh:** disable Fortran, use C and C++ compilers only.

### Usage:
```sh file_to_run```

or

```bash file_to_run```

## References
For more information, please read [my blog](http://voquangphu.org.uk/blog-single/tech/17-1-1.html)
