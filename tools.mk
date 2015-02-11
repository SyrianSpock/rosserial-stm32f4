.PHONY: flash
flash: all
		openocd -f openocd.cfg -c "program build/rosserial-stm32f4.elf verify reset"
.PHONY: r
r: reset
.PHONY: reset
reset:
		openocd -f openocd.cfg -c "init" -c "reset" -c "shutdown"
