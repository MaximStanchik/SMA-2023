.586
.model flat, stdcall
includelib libucrt.lib
includelib kernel32.lib
includelib D:\_work\ œŒ\SAV-2022\Debug\StaticLibrary.lib
ExitProcess proto :dword

EXTRN BREAKL: proc
EXTRN OutputInt: proc
EXTRN OutputStr: proc
EXTRN OutputChar: proc
EXTRN OutputBool: proc
EXTRN strlength: proc
EXTRN stoi: proc
EXTRN strcomp: proc

.stack 4096

.const
	L1 sdword 2
	L2 sdword 0
	L3 sdword 1
	L4 sdword 0
	L5 sdword 1
	L6 sdword 7
	L7 byte "hello",0
	L8 sdword -10
	L9 sdword 13
	L10 sdword 10
	L11 sdword 45
	L12 sdword 4
	L13 sdword 5
	L14 sdword 3
	L15 byte "12",0
	L16 byte "hell",0
	L17 sdword 100

.data
	buffer BYTE 256 dup(0)
	EvenCheckh word 0
	GetFactk sdword 0
	GetFactj sdword 0
	Countlength sdword 0
	Counti sdword 0
	primarynumber sdword 0
	primaryiseven word 0
	primarybinary sdword 0
	primaryoctal sdword 0
	primaryresult sdword 0
	primaryg sdword 0
	primarya sdword 0
	primaryb sdword 0
	primaryc sdword 0
	primaryl sdword 0
	primaryx sdword 0

.code
EvenCheck proc EvenCheckk : sdword
	push EvenCheckk
	push L1
	pop ebx
	pop eax
	cdq
	idiv ebx
	push edx
	pop EvenCheckk
	mov eax, EvenCheckk
	cmp eax, L2
	jz m0
	jnz m1
	je m1
m0:
	push L3
	pop EvenCheckh
	jmp e0
m1:
	push L4
	pop EvenCheckh
e0:
	push EvenCheckh
	jmp local0
local0:
	pop eax
	ret
EvenCheck ENDP

GetFact proc GetFactn : sdword
	mov eax, GetFactn
	cmp eax, L2
	jl m2
	jg m3
	je m3
m2:
	push L2
	pop GetFactk
m3:
	mov eax, GetFactn
	cmp eax, L2
	jz m4
	jnz m5
	je m5
m4:
	push L5
	pop GetFactk
	jmp e1
m5:
	push GetFactn
	push L5
	pop ebx
	pop eax
	sub eax, ebx
	push eax
	pop GetFactj
	push GetFactn
	push GetFactj
	pop edx
	push GetFactj
	call GetFact
	push eax
	pop eax
	pop ebx
	mul ebx
	push eax
	pop GetFactk
e1:
	push GetFactk
	jmp local1
local1:
	pop eax
	ret
GetFact ENDP

Count proc Counth : dword
	push Counth
	pop edx
	push Counth
	call strlength
	push eax
	pop Countlength
	push L2
	pop Counti
	mov eax, Counti
	cmp eax, Countlength
	jl cycle0
	jmp cyclenext0
cycle0:
	push Counti
	push L5
	pop eax
	pop ebx
	add eax, ebx
	push eax
	pop Counti
	mov eax, Counti
	cmp eax, Countlength
	jl cycle0
cyclenext0:
	ret
Count ENDP

main proc
	push L6
	pop edx
	push L6
	call GetFact
	push eax
	pop primarynumber
	push primarynumber
	pop edx
	push primarynumber
	call EvenCheck
	push eax
	pop primaryiseven
	push offset L7
	call Count
	push L8
	pop primarybinary
	push L9
	pop primaryoctal
	push offset L7
	pop edx
	push offset L7
	call strlength
	push eax
	push L10
	push L8
	pop eax
	pop ebx
	add eax, ebx
	push eax
	push L11
	pop eax
	pop ebx
	add eax, ebx
	push eax
	push L1
	push L12
	push L13
	pop eax
	pop ebx
	mul ebx
	push eax
	push L5
	pop eax
	pop ebx
	add eax, ebx
	push eax
	push L14
	pop ebx
	pop eax
	cdq
	idiv ebx
	push eax
	pop eax
	pop ebx
	add eax, ebx
	push eax
	pop ebx
	pop eax
	cdq
	idiv ebx
	push eax
	pop eax
	pop ebx
	add eax, ebx
	push eax
	push offset L15
	pop edx
	push offset L15
	call stoi
	push eax
	pop eax
	pop ebx
	pop ebx
	add eax, ebx
	push eax
	push primaryoctal
	push primarybinary
	pop eax
	pop ebx
	add eax, ebx
	push eax
	push L1
	pop ebx
	pop eax
	cdq
	idiv ebx
	push edx
	pop eax
	pop ebx
	add eax, ebx
	push eax
	pop primaryresult
	push offset L7
	push offset L16
	pop edx
	pop edx
	push offset L16
	push offset L7
	call strcomp
	push eax
	pop primaryg
	push L17
	pop primarya
	push L6
	pop primaryb
	push L1
	pop primaryc
	push primarya
	push primaryb
	push primaryc
	pop ebx
	pop eax
	cdq
	idiv ebx
	push edx
	pop eax
	pop ebx
	mul ebx
	push eax
	pop primaryl
	push L13
	push L13
	push L13
	pop ebx
	pop eax
	sub eax, ebx
	push eax
	pop ebx
	pop eax
	cdq
	idiv ebx
	push eax
	pop primaryx
	push primaryx
	call OutputInt
	call ExitProcess
main ENDP
end main