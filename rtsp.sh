/usr/bin/ffmpeg -i rtsp://LOGIN:PASS@IP:554 -ar 44100 -acodec aac -ac 1 -strict -2 -crf 18 -c:v copy -preset ultrafast -flags -global_header -fflags flush_packets -tune zerolatency -hls_time 1 -hls_list_size 3 -hls_wrap 4 -hls_flags delete_segments -start_number 0 /tmp/www/index1.m3u8