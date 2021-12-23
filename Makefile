#!/bin/bash
install:
ifeq ($(OS),Windows_NT)
	cargo build --release --target=x86_64-pc-windows-gnu
	mkdir "C:\cbin"
	cp ./target/release/SRS.exe "C:\cbin"
	setx PATH "%PATH%;C:\cbin"
	echo "shell-really-say installed""
else
	cargo build --release
	cp ./target/release/SRS /usr/local/bin/SRS
	chmod +x /usr/local/bin/SRS
	echo "shell-really-say installed"
endif

clean:
ifeq ($(OS),Windows_NT)
	del /f /s /q "./target/release/SRS.exe"
	del /f /q "C:\cbin\SRS.exe"
	rmdir /s /q "C:\cbin"
	echo "shell-really-say removed"
else
	rm /usr/local/bin/SRS
	rm ./target/release/SRS
	echo "shell-really-say removed"
endif
