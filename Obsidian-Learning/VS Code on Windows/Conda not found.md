
### First Try

manually re-source terminal
```
source ~/.bashrc
```
### Option 1 check path

`echo $PATH`

and grep to check if any conda paths are corrupt?:

```
env | grep -i conda


echo "$CONDA_ROOT"
echo "$CONDA_EXE"
```


### Option 2: Clean and reset path 

fix_path.sh this is a guide and change paths to fit your systems reference needs

chmod +x fix_path.sh

source fix_path.sh

```shell
#!/bin/bash

# Clear the PATH completely and build it from scratch
NEW_PATH=""


# Add Anaconda-related paths
NEW_PATH="/c/Users/dawesdd1/AppData/Local/anaconda3"
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/anaconda3/Library/mingw-w64/bin"
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/anaconda3/Library/usr/bin"
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/anaconda3/Library/bin"
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/anaconda3/Scripts"
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/anaconda3/bin"
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/anaconda3/condabin"
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/anaconda3/pyrcc5.bat"
  
# Add MinGW and basic Linux-like utilities
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/bin"
NEW_PATH="$NEW_PATH:/mingw64/bin"
NEW_PATH="$NEW_PATH:/usr/local/bin"
NEW_PATH="$NEW_PATH:/usr/bin"
NEW_PATH="$NEW_PATH:/usr/bin/vendor_perl"
NEW_PATH="$NEW_PATH:/usr/bin/core_perl"
  
# Add Java paths
NEW_PATH="$NEW_PATH:/c/Program Files (x86)/Common Files/Oracle/Java/java8path"
NEW_PATH="$NEW_PATH:/c/Program Files (x86)/Common Files/Oracle/Java/javapath"

# Add Windows system paths
NEW_PATH="$NEW_PATH:/c/Windows/system32"
NEW_PATH="$NEW_PATH:/c/Windows"
NEW_PATH="$NEW_PATH:/c/Windows/System32/Wbem"
NEW_PATH="$NEW_PATH:/c/Windows/System32/WindowsPowerShell/v1.0"
NEW_PATH="$NEW_PATH:/c/Windows/System32/OpenSSH"

# Add various program paths
NEW_PATH="$NEW_PATH:/c/Program Files (x86)/Enterprise Vault/EVClient/x64"
NEW_PATH="$NEW_PATH:/c/Program Files/dotnet"
NEW_PATH="$NEW_PATH:/c/Program Files (x86)/Box/Box Edit"
NEW_PATH="$NEW_PATH:/c/Program Files (x86)/dotnet-core-uninstall"
NEW_PATH="$NEW_PATH:/c/Program Files (x86)/Windows Kits/10/Windows Performance Toolkit"
NEW_PATH="$NEW_PATH:/c/Program Files/MATLAB/MATLAB Runtime/R2024a/runtime/win64"
NEW_PATH="$NEW_PATH:/c/Program Files/Polyspace/R2024a/polyspace/bin"
NEW_PATH="$NEW_PATH:/c/Program Files/MATLAB/R2024a/runtime/win64"
NEW_PATH="$NEW_PATH:/c/Program Files/MATLAB/R2024a/bin"
NEW_PATH="$NEW_PATH:/c/ProgramData/chocolatey/bin"
NEW_PATH="$NEW_PATH:/c/Program Files/CMake/bin"
NEW_PATH="$NEW_PATH:/c/Program Files/PuTTY"

# Add Python paths
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/Programs/Python/Python311/Scripts"
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/Programs/Python/Python311"

# Add Windows App paths
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/Microsoft/WindowsApps"
NEW_PATH="$NEW_PATH:/c/Users/dawesdd1/AppData/Local/Programs/Microsoft VS Code/bin"

# Add GStreamer paths
NEW_PATH="$NEW_PATH:/c/gstreamer/1.0/msvc_x86_64/lib"
NEW_PATH="$NEW_PATH:/c/gstreamer/1.0/msvc_x86_64/bin"

Remove the "cmd" path which appears to be malformed

(Originally had: ":/cmd:")

# Export the clean PATH
export PATH="$NEW_PATH"

echo "PATH has been cleaned and reset."
echo "You can verify with: echo \$PATH | tr ':' '\n' | sort | uniq"
```

### Option 3: Add a direct alias reference to .bashrc

``` bash
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/c/Users/dawesdd1/AppData/Local/anaconda3/Scripts/conda.exe' 'shell.bash' 'hook' 2> /dev/null)"
...
...
...
...
...
# <<< conda initialize <<<


# use an alias to create a direct reference to the conda executable
alias conda='/c/Users/dawesdd1/AppData/Local/anaconda3/Scripts/conda.exe'
```

SYSTEM VAR

![[Pasted image 20250312141153.png]]
![[Pasted image 20250312141820.png]]

USER VARS
![[Pasted image 20250312141519.png]]
![[Pasted image 20250312141547.png]]