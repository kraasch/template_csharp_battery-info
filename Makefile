
all:
	make clean
	make build
	make run

build:
	mkdir -p ./build/
	mcs ./src/battery.cs -r:System.Xml.Linq.dll -r:System.Management.dll -o ./build/battery.exe

clean:
	rm -rf ./build/

run:
	mono ./build/battery.exe

