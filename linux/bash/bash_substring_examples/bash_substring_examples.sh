
# Basic Substring Extraction
string="Hello, World!"
echo ${string:7:5}  # Output: World

# Extract from a Fixed Position
string="Welcome to SocketDaddy"
echo ${string:11}  # Output: SocketDaddy

# Extract with Negative Index
string="Bash Substring"
echo ${string: -9}  # Output: Substring

# Using expr for Substrings
string="Hello, World!"
expr substr "$string" 8 5  # Output: World

# Using awk for Substrings
echo "Bash Substring Example" | awk '{print substr($0,6,9)}'  # Output: Substring

# Using cut for Substrings
echo "SocketDaddy, Learn, Substrings" | cut -d',' -f2  # Output: Learn

# Splitting Strings Using IFS
string="Bash Substring Guide"
IFS=' ' read -r -a words <<< "$string"
echo "${words[1]}"  # Output: Substring

# Splitting Strings Using readarray
string="one,two,three"
IFS=',' readarray -t parts <<< "$string"
echo "${parts[1]}"  # Output: two

# Regex Matching and Extraction
string="Version 1.2.3"
if [[ $string =~ ([0-9]+\.[0-9]+\.[0-9]+) ]]; then
  echo "Matched version: ${BASH_REMATCH[1]}"  # Output: 1.2.3
fi

# Removing Prefix
string="prefix_value"
echo ${string#prefix_}  # Output: value

# Removing Suffix
string="value_suffix"
echo ${string%suffix}  # Output: value

# Replacing Substrings
string="SocketDaddy Substring Tutorial"
echo ${string/Substring/Guide}  # Output: SocketDaddy Guide Tutorial
echo ${string//abc/xyz}  # Replaces all occurrences of 'abc' with 'xyz'
