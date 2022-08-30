# Addendum - File permissions

:book: In Unix shells, scripts and programs (binaries) are both _files_. To be able to execute a script or a program, the correct file permissions must be set.

:book: File permissions in Unix shells are divided into three settings:

- File owner permissions
- Group owner permissions
- Permissions for other users

:book: Each setting consists of three permissions:

- **R**ead - The permission to read the file
- **W**rite - The permission to write to the file
- E**x**ecute - The permission to execute the file

:book: To see the permission settings for any file, you can use the `ls` command with the option `-l`, which lists files using "long format".

:pencil2: Try displaying the file permissions for `helloworld.sh` by using the `ls -l <filename>` command.

Example output:

```bash
-rw-r--r--  1 user1  users  50 Aug 22 12:53 helloworld.sh
```

:book: This example output tells us the following (read from right to left):

- The filename is `helloworld.sh`
- The file was last edited on Aug 22 at 12:53
- The file is owned by the group `users`
- The file is owned by user `user1`
- The file size is `1` bytes
- `-rw-r--r--` tells us many things:
  - The first character (`-`) is the file type. `-` for files, `d` for directories.
  - The next 9 characters are three sets of three characters, which convey file permissions for owner, group and other users:
    - File owner permissions: `rw-` - The file owner has the right to read and write to the file.
    - Owner group permissions: `r--` - Members of the group `users` have the right to read the file.
    - Other user permissions: `r--` - Everybody else have the right to read the file.

:book: The following diagram explains all the settings:

<img src="images/file_permissions.png" >

:book: Some examples of common settings:

- `rwxrwxrwx` - Every user has the right to do anything.
- `rwx------` - File owner can do anything, nobody else has any rights.
- `rwxr-xr-x` - File owner can do anything, everybody else can read and execute the file. This setting is common for all programs that are used by all users on a computer, for example `bash` itself, or `ls`, `cd`, etc.