.PHONY: bashrc
bashrc:
	adb push ./termux.bashrc /data/data/com.termux/files/home/.bashrc

.PHONY: server
server:
	mkdir -p ./out
	GOARCH=arm GOOS=linux go build -o ./out/server_android server_android.go
	adb push ./out/server_android /data/data/com.termux/files/usr/bin/server_android