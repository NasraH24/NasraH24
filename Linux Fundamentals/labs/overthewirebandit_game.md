# OverTheWire Bandit Game Solutions (Levels 1-20)

## Table of Contents
- [Introduction](#introduction)
- [Level 0](#level-0)
- [Level 0-1](#level-0-1)
- [Level 1-2](#level-1-2)
- [Level 2-3](#level-2-3)
- [Level 3-4](#level-3-4)
- [Level 4-5](#level-4-5)
- [Level 5-6](#level-5-6)
- [Level 6-7](#level-6-7)
- [Level 7-8](#level-7-8)
- [Level 8-9](#level-8-9)
- [Level 9-10](#level-9-10)
- [Level 10-11](#level-10-11)
- [Level 11-12](#level-11-12)
- [Level 12-13](#level-12-13)
- [Level 13-14](#level-13-14)
- [Level 14-15](#level-14-15)
- [Level 15-16](#level-15-16)
- [Level 16-17](#level-16-17)
- [Level 17-18](#level-17-18)
- [Level 18-19](#level-18-19)
- [Level 19-20](#level-19-20)



## Introduction
The **OverTheWire Bandit game** is a fun and challenging way to learn core Linux commands and concepts through hands-on problem-solving. It consists of a series of levels, where each level requires you to solve a challenge using different Linux tools and techniques. It's a great resource for beginners to get comfortable with the Linux environment in a safe and engaging way.

I decided to go through this game to solidify my understanding of fundamental Linux commands, improve my troubleshooting skills, and learn how to approach problems systematically. It's been an excellent practical resource on my journey to mastering Linux!

For more details and to start the game, click [here](https://overthewire.org/wargames/bandit/)

## Level 0
### Level Goal
The goal of this level is for you to log into the game using SSH. The host to which you need to connect is bandit.labs.overthewire.org, on port 2220. The username is bandit0 and the password is bandit0.
### Solution
To connect to the remote server, we need to use **SSH** with the **username** `bandit0`, the **hostname** `bandit.labs.overthewire.org`, and the **port** `2220`, specifying the port using the `-p` **option**. The command will look like this:

```bash
ssh bandit0@bandit.labs.overthewire.org -p 2220
```

You will then be prompted to enter the password which has been provided. 

You have now successfully signed into **bandit0** and can progress to the next level.

### Key Commands
- **ssh**

## Level 0-1
### Level Goal
The password for the next level is stored in a file called readme located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.
### Solution
Repeat the command provided in the [previous level](#level-0) if you aren't connected already.

Once connected, we should automatically be placed in the home directory. We can confirm this by using the `pwd` command which will print out the current working directory. 

```bash
pwd
```
Once this is confirmed, we will use the `ls` command to list out all the files that are stored in the directory we are in.

```bash
ls
```
Which will output the following:

```bash
readme
```

Now that we have confirmed the location of the `readme` file and we are in the correct directory, we can use the `cat` command to display the contents of the `readme` file. This is how the command should look:

```bash
cat readme
```

Which should output the password to the next level. 

To terminate the ssh connection, simply type in the `exit` command like so:

```bash
exit
```

This will return you to the local shell.

### Key Commands
- **pwd**
- **ls**
- **cat**
- **exit**


## Level 1-2
### Level Goal
The password for the next level is stored in a file called - located in the home directory.
### Solution
Connect to the next level through `ssh` by using the same command used previously. However, this time we will change the username to `bandit1`. The command should look like this:

```bash
ssh bandit1@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-0-1).

Once connected, we'll once again use the `ls` command to confirm that the file we need is in the home directory.

```bash
ls
```
Which will output the necessary filename. 


A file named `-` cannot be accessed using `cat` by itself because the `-` is interpreted as a special argument, typically representing **standard input (stdin)**, rather than as the name of a file. To access the file, you can use `./-`, which explicitly specifies the file in the **current directory**, bypassing the special meaning of `-`. This is how the command should appear:

```bash
cat ./-
```

This will output the password to access the next level.

The `.` represents the current directory in a filesystem path and is used to explicitly refer to files or commands within that directory. We can use `ls -a` to view the `.` directory because the `-a` **option** lists all entries in the directory, including **hidden files** and **special directories** like `.` (representing the current directory) and `..` (representing the parent directory). This allows us to explicitly see the `.` directory listed as part of the output.

You can now use the `exit` command to return to the local shell and begin the next level.

### Key Commands
- **cat**
- **ls -a**

## Level 2-3
### Level Goal
The password for the next level is stored in a file called spaces in this filename located in the home directory.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit2@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-1-2).

Once connected, I used the `ls` command to confirm that the correct file is stored in our current directory.

Once confirmed, I used the `cat` command to print out the contents of the file. Since the filename contains spaces, the cat command won't work unless we enclose the name in quotation marks, as it will interpret each word as a separate filename. The command should look like this:

```bash
cat "spaces in this filename"
```

The password for the next level should now be displayed in the terminal.

You can now use the `exit` command to return to the local shell and begin the next level.

### Key Commands
- **ls**
- **cat**

## Level 3-4
### Level Goal
The password for the next level is stored in a hidden file in the inhere directory.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit3@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-2-3).

The level description informs us that the file storing the password is in the `inhere` directory. We can navigate to that directory by using the `cd` command.

```bash
cd inhere
```

Next I used the `ls-a` command to list all files in the `inhere` directory including hidden ones. 

```bash
ls -a
```

The output should contain a file named `...Hiding-From-You`. We will now use the `cat` command to display the contents of this file.

```bash
cat ...Hiding-From-You
```
The password for the next level should now be displayed in the terminal.

### Key Commands
- **cd**
- **ls -a**
- **cat**

## Level 4-5
### Level Goal
The password for the next level is stored in the only human-readable file in the inhere directory. 
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit4@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-3-4).

The level description informs us that the file storing the password is in the `inhere` directory. We can navigate to that directory by using the `cd` command.

```bash
cd inhere
```

The `file` command is used to determine the type of a file by analysing its contents rather than relying on its extension. In this case, we're using it to locate a file that is **ASCII text**, as we are specifically searching for **human-readable files**. Below is the command being used:

```bash
file ./*
```

The `*` indicates a wildcard which in this case is used to list the type of all the files in the current directory (inhere).

The output of the last command should include `-file07` which is the only file that matches the human readable criteria. We will now use the `cat` command to print out the contents. However, we must remember to use `./` prior to the filename as the `-` is invalid, as mentioned in [level 1-2](#level-1-2).

```bash
cat ./-file07
```
The password for the next level should now be displayed in the terminal.

You can now use the `exit` command to return to the local shell and begin the next level.

### Key Commands
- **cd**
- **file**
- **cat**

## Level 5-6
### Level Goal
The password for the next level is stored in a file somewhere under the inhere directory and has all of the following properties:

- **Human-readable**
- **1033 bytes in size**
- **Not executable**
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit5@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-4-5).

The level description informs us that the file storing the password is in the `inhere` directory. We can navigate to that directory by using the `cd` command.

```bash
cd inhere
```

I used the `find` command to search for the desired file using the parameters mentioned in the level description. To get a better understanding of the options for the `find` command, I referred to its man page. The `man` page  is a built-in Linux documentation system that provides detailed information about commands, including their usage, options, and syntax. You can access it by typing `man` followed by the command you want to search.

```bash
man find
```

With this I was able to find the following options to help narrow my search:

- `-type`: Allows you to specify whether it's a file or directory you're searching for. I used `f` as that indicates we're searching for a file.
- `-size`: Allows you to specify the size of the file. I followed this with `1033c` which means it is 1033 bytes in size.
- `-! -executable`: This is used to only output files that are not executable.

With this information I used the following command to search for the file:

```bash
find -type f -size 1033c ! -executable
```
This will output the path to the file which contains the password:

```bash
./maybehere07/.file2
```

To confirm that the file is human readable, I used the `file` command followed by the path to the file. 

```bash
file ./maybehere07/.file2 
```

The output was **ASCII text** which confirms it is human readable. 

Lastly, I used the `cat` command followed by the file path to obtain the password to the next level.

```bash
cat ./maybehere07/.file2 
```

### Key Commands
- **cd**
- **file**
- **man**
- **find**
- **cat**

## Level 6-7
### Level Goal
The password for the next level is stored somewhere on the server and has all of the following properties:

- **Owned by user bandit7**
- **Owned by group bandit6**
- **33 bytes in size**
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit6@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-5-6).

I used the `find` command once more, however there are some additional options required that I found through the `man` page:

- `-group`: Allows us to specify which group owns the file.
- `-user`: Allows us to specify which user owns the file.

Rather than using `cd` to navigate to the desired directory, I used `/` instead as this indicates that we are searching the entire system. Here's how the command will look:

```bash
find / -size 33c -group bandit6 -user bandit7
```

This will locate the file containing the password. Next I used the `cat` command, followed by the path to the file to retrieve the password to the next level:

```bash
cat /var/lib/dpkg/info/bandit7.password
```

### Key Commands
- **find**
- **cat**

## Level 7-8
### Level Goal
The password for the next level is stored in the file data.txt next to the word millionth.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit7@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-6-7).

For this level I used the `grep` command. The `grep` command is used to search for specific patterns or text within files, displaying lines that match the given criteria. The command should be as follows:

```bash
grep "millionth" data.txt
```
The password for the next level should now be displayed in the terminal, alongside the word `"millionth"`.

### Key Commands
- **grep**

## Level 8-9
### Level Goal
The password for the next level is stored in the file data.txt and is the only line of text that occurs only once.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit8@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-7-8).

The first command I used was the `sort` command. This sort the lines within `data.txt` and group all identical lines.

```bash
sort data.txt
```

To find the line that appears only once, I used the `uniq` command with the `-u` option. By piping the output of the previous command to the `uniq -u` command, I was able to reveal the line containing the password. The command should look like this:

```bash
sort data.txt | uniq -u
```

### Key Commands
- **sort**
- **uniq**

## Level 9-10
### Level Goal
The password for the next level is stored in the file data.txt in one of the few human-readable strings, preceded by several ‘=’ characters.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit9@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-8-9).

I used the `strings` command to identify the human-readable lines within the `data.txt` file. 

```bash
strings data.txt
```

Next I used the `grep` command to identify the line which contains the several `=` characters that precede the password. The output from the previous command should be piped into the `grep` command like so:

```bash
strings data.txt | grep "===="
```
This will output the line containing the `=` characters as well as the password to the next level.

### Key Commands
- **strings**
- **grep**

## Level 10-11
### Level Goal
The password for the next level is stored in the file data.txt, which contains base64 encoded data.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit10@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-9-10).

For this level, I used the `base64` command with the `-d` option to decode the **base64 encoded data** which should revert it back to its original text form. The command should look like this:

```bash
base64 -d data.txt
```
The text should now be decoded back to its original format and the password should be displayed.

### Key Commands
- **base64**

## Level 11-12
### Level Goal
The password for the next level is stored in the file data.txt, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit11@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-10-11).

A file encoded in **ROT13** format has its text shifted by 13 places in the alphabet, so each letter is replaced with the one 13 characters ahead or behind it, making it a simple substitution cipher. To decode it, you can use the `tr` command, which translates characters. 

First, I used the `cat` command to display the encoded password, then piped it into the `tr` command, specifying the format to which the letters had been mapped.

```bash
cat data.txt | tr ‘a-zA-Z’ ‘n-za-mN-ZA-M’
```

The decoded password should now be displayed in the terminal.

### Key Commands
- **tr**

## Level 12-13
### Level Goal
The password for the next level is stored in the file data.txt, which is a hexdump of a file that has been repeatedly compressed. For this level it may be useful to create a directory under /tmp in which you can work. Use mkdir with a hard to guess directory name. Or better, use the command “mktemp -d”. Then copy the datafile using cp, and rename it using mv (read the manpages!)
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit12@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-11-12).

As advised in the level description, I used the `mkdir` command to create a directory within the `/tmp` folder.

```bash
mkdir /tmp/tmpdir
```

I then copied the **data.txt** file over to the new directory using the `cp` command like so:

```bash
cp data.txt /tmp/tmpdir
```

I used the `xxd` command with the `-r` option to revert the hexdump change that was previously done. You must also state what the new file generated should be called like so:

```bash
xxd -r data.txt data1.txt
```

I then used the `file` command to figure out what the filetype of this new file is.

```bash
file data1.txt
```

The output indicated that this was compressed through **gzip**. To decompress a gzip file, you must first use the `mv` command to rename it with the `.gz` extension.

```bash
mv data1.txt data1.gz
```
Now you can decompress by using the `gunzip` command like so:

```bash
gunzip data1.gz
```
You'll be left with a file named `data1`. Use the `file` command once more to determine what the file type is. 

This new file has been compressed through **bzip2**. To decompress a bzip2 file, you must first use the `mv` command to rename it with the `bz2` extension.

```bash
mv data1 data2.bz2
```
I'm adjusting the file number by 1 each team I rename it to clearly indicate that I've moved on to the next decompression. Now you can decompress by using the `bunzip2` command.

```bash
bunzip2 data2.bz2
```
Repeat the previous steps a couple more times as the next few compressed files are either `gzip` or `bzip2`. You must ensure that you're using the `file` command to identify what is the correct decompression method to use.

You'll soon be met with a file that is a **tar archive**. The `tar -xvf` command is used to extract files from a tar archive. The `-x` option specifies extraction, `-v` enables verbose mode to display the files being extracted, and `-f` indicates that the next argument is the name of the archive file. Together, these options make it easy to unpack and view the contents of a tar archive. The command should look like this (adjust the command to match the filename you have):

```bash
tar -xvf data5
```
The output will have the `.bin` extension. Continue to use the `file` command to verify the file type and use the necessary extraction method until you reach a file that is **ASCII text**. Once identified, use the `cat` command to retrieve the password.

### Key Commands
- **xxd**
- **mkdir**
- **cp**
- **file**
- **mv**
- **gunzip**
- **bunzip2**
- **tar**

## Level 13-14
### Level Goal
The password for the next level is stored in /etc/bandit_pass/bandit14 and can only be read by user bandit14. For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. Note: localhost is a hostname that refers to the machine you are working on.
### Solution
First we must use the `scp` command to securely copy the **private SSH key** that is stored in the home directory of **bandit13**. we'll use the `-P` option to specify the port as well as input the file path to the SSH key and the location in our local directory that we want to copy it over to.

```bash
scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private ~/Desktop/
```

The SSH key should now be stored in my Desktop. Before we use the key to connect to **bandit14** we must first adjust the permissions to **read only** as the current permissions are too open. We can confirm the current permissions by using the `ls` command with the `-l` like so (ensure you're in the directory that you're running the search for):

```bash
ls -l
```
To change the permissions to read only for the owner, you can use the `chmod` command. The `chmod 400` command uses octal notation to set file permissions, granting the owner read-only access while removing write and execute permissions for the owner, group, and others.

```bash
chmod 400 sshkey.private
```

Now we'll use the `ssh` command with the `-i` option to securely connect to **bandit14** with the SSH private key.

```bash
ssh -i ~/Desktop/sshkey.private bandit14@bandit.labs.overthewire.org -p 2220
```
Now that we've securely connected, we can use the `cat` command to obtain the password which is stored in **/etc/bandit_pass/bandit14**

```bash
cat /etc/bandit_pass/bandit14
```
### Key Commands
- **scp**
- **ls -l**
- **chmod**
- **ssh -i**

## Level 14-15
### Level Goal
The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit14@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-13-14).

To retrieve the password for the next level, use the `nc` command to connect to **port 30000** on **localhost**, then submit the password for the current level when prompted.

```bash
nc localhost 30000
```
After entering the password to **bandit14**, the password to the next level should be displayed in the terminal.

### Key Commands
- **nc**

## Level 15-16
### Level Goal
The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost using SSL/TLS encryption.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit15@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-14-15).

I used the `openssl s_client` command to establish a **secure SSL/TLS connection**. I included the `-connect` option followed by the hostname and port `(localhost:30001)` to specify the connection details. I included the -connect option followed by the hostname and port (localhost:30001) to specify the connection details. The command should look like this:

```bash
openssl s_client -connect localhost:30001
```
After entering the password to the current level, the password to the next level was displayed.

### Key Commands
- **openssl s_client**

## Level 16-17
### Level Goal
The credentials for the next level can be retrieved by submitting the password of the current level to a port on localhost in the range 31000 to 32000. First find out which of these ports have a server listening on them. Then find out which of those speak SSL/TLS and which don’t. There is only 1 server that will give the next credentials, the others will simply send back to you whatever you send to it.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit16@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-15-16).

To solve this challenge, I used the `nmap` command which is a network scanning tool used to discover hosts and services on a network. I paired this with the `-sV` option which probes open ports to determine what service is running on each port (e.g. echo) as well as the version. I also used the `-p` option to specify the range of ports to scan. The complete command should look like this:

```bash
nmap -sV -p 31000-32000 localhost
```

The output contained a few open ports with varying services. The one required to progress was **port 31790** as that was the only one which didn't contain `echo` as a service. 

I then used the `ncat` command paired with the `-ssl` option to establish a **secure SSL/TLS connection** to the necessary port on the localhost.

```bash
ncat -ssl localhost 31790
```

After entering the current level's password, I was met with an SSH private key which could be used to access the next level. I copied the contents and exited the SSH connection using the `exit` command. I then pasted it to a file I created using `vim`.

The file permissions had to be adjusted in order to restrict read access only to the file owner.

```bash
chmod 400 sshkey17.private
```
I then used the `ssh` command with the `-i` option to connect to **bandit17** with this newly created SSH private key.

```bash
ssh -i ~/sshkey17.private bandit17@bandit.labs.overthewire.org -p 2220
```

Once connected, I used the `cat` command to output the password to this level which is stored in the file located at `etc/bandit_pass/bandit17`:

```bash
cat etc/bandit_pass/bandit17
```

### Key Commands
- **nmap**
- **ncat**
- **vim**
- **chmod**
- **ssh -i**

## Level 17-18
### Level Goal
There are 2 files in the homedirectory: passwords.old and passwords.new. The password for the next level is in passwords.new and is the only line that has been changed between passwords.old and passwords.new.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit17@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-16-17).

The `diff` command alongside the `--suppress-common-lines` option are used to identify differences between files whilst suppressing lines that are common. Here's how the command should look:

```bash
diff --suppress-common-lines passwords.new passwords.old
```
This displayed the only line that had been changed which is the password to the next level.

### Key Commands
- **diff**

## Level 18-19
### Level Goal
The password for the next level is stored in a file readme in the homedirectory. Unfortunately, someone has modified .bashrc to log you out when you log in with SSH.
### Solution
Since we cannot SSH directly into **bandit18**, I added the `cat` command to the end of the `ssh` command in order to read the file containing the password. It allows me to do this without kicking me off the SSH connection. The command should look like so:

```bash
ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
```
After entering the password to **bandit18**, the password to the next level should be displayed.

### Key Commands
- **ssh**
- **cat**

## Level 19-20
### Level Goal
To gain access to the next level, you should use the setuid binary in the homedirectory. Execute it without arguments to find out how to use it. The password for this level can be found in the usual place (/etc/bandit_pass), after you have used the setuid binary.
### Solution
Connect to the next level through `ssh` by using the following command:

```bash
ssh bandit19@bandit.labs.overthewire.org -p 2220
```
You'll be prompted to enter the password. This was the password we obtained on the [previous level](#level-18-19).

**A Set User ID (SetUID) binary** is a type of file that, when executed, runs with the privileges of the file's owner rather than the user who executes it. Since the file containing the password **(/etc/bandit_pass/bandit20)** is owned by **bandit20**, I executed the file and followed it with the `cat` command in order to display the contents of the file.

```bash
./bandit20-do cat  /etc/bandit_pass/bandit20
```

This ran the `cat` command as if I was **bandit20**, allowing me to retrieve the password to the next level.

### Key Commands
- **cat**