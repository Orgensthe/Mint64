all: Bootloader Disk.img


Bootloader:
	@echo
	@echo ========= Build Bootloader =========
	@echo
	make -C 00.Bootloader
	@echo
	@echo ========= Build Complete =========
	@echo
Disk.img: 00.Bootloader/Bootloader.bin
	@echo
	@echo ============= Disk Image Build start ============
	@echo

	make -C 00.Bootloader

	@echo
	@echo =========== Disk Image Build complete ===========
	@echo

clean:
	make -C 00.Bootloader clean
	rm -rf Disk.img

