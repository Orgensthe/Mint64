all: BootLoader Disk.img


BootLoader:
	@echo
	@echo ========= Build Bootloader =========
	@echo
	make -C 00.BootLoader
	@echo
	@echo ========= Build Complete =========
	@echo
Disk.img: 00.BootLoader/BootLoader.bin
	@echo
	@echo ============= Disk Image Build start ============
	@echo
	cp 00.BootLoader/BootLoader.bin Disk.img
	@echo
	@echo =========== Disk Image Build complete ===========
	@echo

clean:
	make -C 00.BootLoader clean
	rm -rf Disk.img
