#!/bin/bash

# Description: MultiLine Comments Test
# Author: Sebastian Jardi
# Date: 15/09/2023

echo
echo This code is executed

# Al Atom no es mostra com un comentari
<<COMMENT
  echo This code do not executes
COMMENT

# Al Atom ja sembla un comentari
:<<COMMENT
  echo This code do not executes
COMMENT

# L'espai en blanc entre els : i ' importa
: '
  echo This code is no executed
'
