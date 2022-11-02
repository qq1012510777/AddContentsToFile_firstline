#!/bin/bash

array=()
while IFS=  read -r -d $'\0'; do
    array+=("$REPLY")
done < <(find . -type f -name "CMakeLists.txt" -print0)

for i in "${array[@]}"
do
    echo ${i}
    sed -i '1i#***************************************************************************#\n# cuDFNsys - simulating flow and transport in 3D fracture networks          #\n# Copyright (C) 2022, Tingchang YIN, Sergio GALINDO-TORRES                  #\n#                                                                           #\n# This program is free software: you can redistribute it and/or modify      #\n# it under the terms of the GNU Affero General Public License as            #\n# published by the Free Software Foundation, either version 3 of the        #\n# License, or (at your option) any later version.                           #\n#                                                                           #\n# This program is distributed in the hope that it will be useful,           #\n# but WITHOUT ANY WARRANTY; without even the implied warranty of            #\n# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the             #\n# GNU Affero General Public License for more details.                       #\n#                                                                           #\n# You should have received a copy of the GNU Affero General Public License  #\n# along with this program.  If not, see <https://www.gnu.org/licenses/>.    #\n#***************************************************************************#\n' ${i}
    
done
