#!/bin/bash

start_time=$(date +%s.%N)

number_folders=$(ls -laR $name 2>/dev/null | grep ^d | wc | awk '{print $1}')

top5_max_folders=$(du -h $name 2>/dev/null | sort -r | head -5 | awk '{print NR " – " $2 " , " $1}')

number_files=$(find $name -maxdepth 1 -type f 2>/dev/null | wc -l)

conf_files=$(find $name -name *.conf 2>/dev/null | wc -l)
text_files=$(find $name -name *.txt 2>/dev/null | wc -l)
execut_files=$(find $name -executable -type f 2>/dev/null | wc -l)
log_files=$(find $name -name *.log 2>/dev/null | wc -l)
archive_files=$(find $name -name *.zip -o -name *.rar -o -name *.gz 2>/dev/null | wc -l)
symbol_files=$(find $name -type l 2>/dev/null | wc -l)

top10_max_files=$(find $name -type f -exec du -sh {} + 2>/dev/null | sort -hr | head -10 |
awk '{printf "%d - %s, %s, ", NR, $2, $1}{split($2,type,"."); print type[length(type)]}')

top10_max_exe_files=$(find $name -type f -perm /a=x -printf "%s\t%p\t" \
-exec bash -c 'md=$(md5sum "$0"); echo ${md:0:32};' {} \; \
2>/dev/null | sort -hr | head -10 | \
awk '{printf "%d - %s, %s, %s\n", NR, $2, $1, $3}')

end_time=$(date +%s.%N)

date=$(echo "${end_time} - ${start_time}" | bc)
run_time=$(printf "%02.1f" ${date})

data_system=$(
    echo "Total number of folders (including all nested ones) = $number_folders"
    echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
    echo $top5_max_folders
    echo "etc up to 5"
    echo "Total number of files = $number_files"
    echo "Number of:"
    echo "Configuration files (with the .conf extension) = $conf_files"
    echo "Text files = $text_files"
    echo "Executable files = $execut_files"
    echo "Log files (with the extension .log) = $log_files"
    echo "Archive files = $archive_files"
    echo "Symbolic links = $symbol_files"
    echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
    echo $top10_max_files
    echo "etc up to 10"
    echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file)"
    echo $top10_max_exe_files
    echo "etc up to 10"
    echo "Script execution time (in seconds) = ${run_time}"
)