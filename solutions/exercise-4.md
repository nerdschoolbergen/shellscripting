# Solutions - Exercise 4

---

## 4.1
---
*Try piping the output into other commands, such as wc -l (counts the number of lines) or grep <searchterm> (text search).*
Some simple examples. Note that there are easier ways to do these with the `ls` command, but it is a nice demonstration of pipes. 


List the the directory, do a text search using grep and output the number of files found
```
ls -l | grep txt | wc -l
```

Sort the file output, default by size.
```
ls -l | sort -S
```

Show the smallest file in the directory
```
ls -l  | sort | head -1
```

## 4.2

```
# Assuming we are inside the `files` folder.

cat ./got_characters.txt | sort | uniq | wc -l
```

## 4.3
```
# Assuming we are inside the `files` folder.

cat ./got_characters.txt | sort | uniq > unique_got_characters.txt
```
