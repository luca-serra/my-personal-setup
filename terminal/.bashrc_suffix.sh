# File used when installing additional aliases on new Linux machine
for file in ~/.additional_custom_script/*; do
   if [ -f "$file" ]; then
       source "$file"
   fi
done
