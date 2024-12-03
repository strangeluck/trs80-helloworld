; For LDOS
; ./zmac ~/Development/trs80/helloworld/hello.asm --od ~/Development/trs80/helloworld/
; ./trs80gp -ld ~/Development/trs80/helloworld/hello.cmd
; (runs in TRS-DOS and LDOS)

	org	$7000

@DISPLY	equ	$4467		;pg 6-66
@EXIT	equ	$402d		;pg 6-60

ENTER	equ	$0d			;@DISPLY with newline

text	defb	'Hello world!',ENTER

main:
		ld		hl,text
		call	@DISPLY
		call	@EXIT
		end		main
