include config.mk

all: ghidra/ghidra
	$(MAKE) -C src

clean:
	$(MAKE) -C src clean

install:
	$(MAKE) -C src install

uninstall:
	$(MAKE) -C src uninstall

ghidra/ghidra:
	$(MAKE) -C ghidra

mrproper:
	rm -rf ghidra/ghidra
	rm -rf third-party/pugixml
	$(MAKE) -C src clean
