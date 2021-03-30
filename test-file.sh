#!/bin/bash
# test-file: проверка файла
FILE=~/.bashrc
if [ -e "$FILE" ]; then
  if [ -f "$FILE" ]; then
    echo "$FILE is a regular file."
  fi
  if [ -d "$FILE" ]; then
    echo "$FILE is a directory."
  fi
  if [ -r "$FILE" ]; then
    echo "$FILE is readable."
  fi
  if [ -w "$FILE" ]; then
    echo "$FILE is writable."
  fi
  if [ -x "$FILE" ]; then
    echo "$FILE is executable/searchable."
  fi
else
  echo "$FILE does not exist"
  exit 1
fi

ANSWER=maybe
if [ -z "$ANSWER" ]; then
  echo "There is no answer." >&2
  exit 1
fi
if [ "$ANSWER" == "yes" ]; then
  echo "The answer is YES."
elif [ "$ANSWER" == "no" ]; then
  echo "The answer is NO."
elif [ "$ANSWER" == "maybe" ]; then
  echo "The answer is MAYBE."
else
  echo "The answer is UNKNOWN."
fi

INT=-5
if [ -z "$INT" ]; then
  echo "INT is empty." >&2
  exit 1
fi
if [ $INT -eq 0 ]; then
  echo "INT is zero."
else
  if [ $INT -lt 0 ]; then
    echo "INT is negative."
  else
    echo "INT is positive."
  fi
  if [ $((INT % 2)) -eq 0 ]; then
    echo "INT is even."
    429
  else
    echo "INT is odd."
  fi
fi

if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
  if [ $INT -eq 0 ]; then
    echo "INT is zero."
  else
    if [ $INT -lt 0 ]; then
      echo "INT is negative."
    else
      echo "INT is positive."
    fi
    if [ $((INT % 2)) -eq 0 ]; then
      echo "INT is even."
    else
      echo "INT is odd."
    fi
  fi
else
  echo "INT is not an integer." >&2
  exit 1
fi

# test-integer3: проверка вхождения целочисленного значения
# в определенный диапазон.
MIN_VAL=1
MAX_VAL=100
INT=50
if [[ "$INT" =~ ^-?[0-9]+$ ]]; then
  if [[ "$INT" -ge "$MIN_VAL" && "$INT" -le "$MAX_VAL" ]]; then
    echo "$INT is within $MIN_VAL to $MAX_VAL."
  else
    echo "$INT is out of range."
  fi
else
  echo "$INT is not an integer." >&2
  exit 1
fi

exit