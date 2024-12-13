### Bash Commands

Bash command to find all .mp3 files in the CURRENT dir  
```bash
find . -type f -name "*.mp3"
```
This command does the following:
    find - The command used to search for files and directories.

    . - Specifies the current directory. You can replace this with another path if needed.

    -type f: Limits the search to files (excluding directories).

    -name "*.mp3": Searches for files with names ending in .mp3.

Append the previous command to create a dir named mp3 and put the found files into it
```bash
mkdir -p mp3 && find . -type f -name "*.mp3" -exec mv {} mp3/ \;
```
This command does the following:
    mkdir -p mp3 - Creates a directory named mp3. The -p option ensures that no error is thrown if the directory already exists.

    && - Ensures that the next command runs only if the directory creation is successful.

    find . -type f -name "*.mp3" - Finds all .mp3 files in the current directory and subdirectories.

    -exec mv {} mp3/ \;: - Moves each found .mp3 file to the mp3 directory. The {} is a placeholder for each found file, and \; ends the -exec command.

* If no dir exists, it must create the dir - ex - 'MP3' - find all .mp3 files and mv them into 'MP3' 
```bash
mkdir -p MP3 && find . -type f -name "*.mp3" -exec mv {} MP3/ \;
```
Breakdown:
    mkdir -p MP3 - Creates the directory MP3. The -p option ensures command does not throw an error if directory already exists.

    && - Runs the next command only if directory creation is successful.

    find . -type f -name "*.mp3" - Searches for all .mp3 files in the current directory and its subdirectories.

    -exec mv {} MP3/ \;: - Moves each found .mp3 file to the MP3 directory. {} is a placeholder for each matched file, and \; terminates the -exec action.

