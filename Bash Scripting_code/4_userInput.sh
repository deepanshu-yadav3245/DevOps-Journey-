#!/bin/bash

# --- Function to collect input if not provided as arguments ---
get_input() {
  local prompt="$1"
  local var_name="$2"
  local default_value="$3"

  if [ -z "${!var_name}" ]; then
    read -p "$prompt " input
    eval $var_name=\${input:-$default_value}
  fi
}

# --- Step 1: Take arguments (if provided) ---
name=$1
age=$2
course=$3
future=$4

# --- Step 2: Ask interactively if missing ---
get_input "Enter your Name:" name "Unknown"
get_input "Enter your Age:" age "0"
get_input "Enter your Course:" course "Not specified"
get_input "Enter your Future Goal:" future "Still thinking"

# --- Step 3: Display formatted output ---
echo
echo "---------------- Student Info ----------------"
echo "Name         : $name"
echo "Age          : $age"
echo "Course       : $course"
echo "Future Goal  : $future"
echo "------------------------------------------------"

