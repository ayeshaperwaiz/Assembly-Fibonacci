; Ayesha Perwaiz
Include Irvine32.inc
; macros
ClearEAX TEXTEQU <mov EAX, 0>
ClearEBX TEXTEQU <mov EBX, 0>
ClearECX TEXTEQU <mov ECX, 0>
ClearEDX TEXTEQU <mov EDX, 0>

.data
	; declare variables here
	arrayA BYTE 4 DUP(?)
	fib1 BYTE 1
	fib0 BYTE 0

.code
main proc
ClearEAX
ClearEBX
ClearECX
ClearEDX

mov esi, 0				; clearing esi
mov al, fib0			; moves fib0 into the al register
add al, fib1			; add fib1 to al register
mov esi, OFFSET arrayA	; moves address of arrayA into esi
call DumpRegs

; 2
mov dl, fib1			; moves fib1 into dl register
add dl, al 				; adds value stored in al register into dl
mov[esi], dl			; moves dl into first slot of arrayA
call DumpRegs

; 3
add al, dl 				; moves dl into al register
inc esi					; arrayA + 1
mov[esi], al			; moves al into first slot of arrayA
call DumpRegs

; 5
add dl, al				; moves al into dl register
inc esi					; arrayA + 2
mov[esi], dl
call DumpRegs

; 8
add al, dl 				; moves dlinto al register
inc esi					; arrayA + 3 
mov[esi], al 
call DumpRegs

mov EBX, DWORD PTR arrayA	;allows arrayA to be moved into EBX
call DumpRegs

exit
main endp
end main