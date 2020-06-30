#!/bin/bash
# Script to extract binary files from PCAP
dir="/path/to/pcap/directory"

for file in ${dir}/*
do
        mkdir -p "/tmp/HANDLED"
	[[ "$file" =~ HANDLED ]] && continue
	cd $dir
	filename=$(echo "$file" | cut -d/ -f5)
        if [[ "$filename" =~ snort ]]; then
	    infile=$filename
            outfile=malware

                for stream in $(tshark -nlr $infile -T fields -e tcp.stream | sort -n | uniq | sed 's/\r//')
                do
                    echo "Processing stream $stream: ${outfile}_${stream}"
                    sudo tshark -nlr $infile -qz "follow,tcp,raw,$stream" | tail -n +7 | sed 's/^\s\+//g' | xxd -r -p > /path/to/output/dir/${outfile}_${stream}
                done
	# uncomment the below to run the binary (useful if kernel hook monitoring
        #cd /path/to/output/dir
        #sudo chmod +x "${outfile}_${stream}"
        #sudo /path/to/output/dirmalware_*
        mv "$file" "/tmp/HANDLED/"
	else
		:
	fi
done
