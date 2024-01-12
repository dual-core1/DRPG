	.intel_syntax noprefix

.section .text
.balign 16

.globl _main
_main:
push ebp
mov ebp, esp
and esp, 0xFFFFFFF0
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
call ___main
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_Init@12
.L_0002:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
.L_0004:
push -65536
call _fb_Cls@4
push 1
push 31
push offset _Lt_0005
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 32
push offset _Lt_0006
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 9
push offset _Lt_0007
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 8
push offset _Lt_0008
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0009:
push -1
push 0
push 2
push offset _Lt_000A
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_ConsoleInput@12
lea eax, [ebp-8]
push eax
call _fb_InputInt@4
mov eax, dword ptr [ebp-8]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_000C
jmp .L_0009
.L_000C:
cmp dword ptr [ebp-8], 2
jne .L_000E
push 0
call _fb_End@4
.L_000E:
cmp dword ptr [ebp-8], 1
jne .L_0010
.L_0010:
.L_0011:
mov dword ptr [ebp-12], 1
push 0
push 8
push offset _Lt_0012
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
mov dword ptr [ebp-28], 1
push 0
push 5
push offset _Lt_0013
push -1
lea ebx, [ebp-40]
push ebx
call _fb_StrAssign@20
.L_0014:
cmp dword ptr [ebp-12], 0
jne .L_0016
push 0
push 8
push offset _Lt_0017
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_0016:
cmp dword ptr [ebp-12], 1
jne .L_0019
push 0
push 8
push offset _Lt_0012
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_0019:
cmp dword ptr [ebp-12], 2
jne .L_001B
push 0
push 8
push offset _Lt_001C
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_001B:
cmp dword ptr [ebp-12], 3
jne .L_001E
push 0
push 7
push offset _Lt_001F
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_001E:
cmp dword ptr [ebp-12], 4
jne .L_0021
push 0
push 6
push offset _Lt_0022
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_0021:
cmp dword ptr [ebp-12], 5
jne .L_0024
push 0
push 9
push offset _Lt_0025
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_0024:
cmp dword ptr [ebp-12], 6
jne .L_0027
push 0
push 7
push offset _Lt_0028
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_0027:
cmp dword ptr [ebp-12], 7
jne .L_002A
push 0
push 7
push offset _Lt_002B
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_002A:
cmp dword ptr [ebp-12], 8
jne .L_002D
push 0
push 13
push offset _Lt_002E
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_002D:
cmp dword ptr [ebp-12], 9
jne .L_0030
push 0
push 13
push offset _Lt_0031
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_0030:
cmp dword ptr [ebp-12], 10
jne .L_0033
push 0
push 8
push offset _Lt_0034
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.L_0033:
cmp dword ptr [ebp-28], 1
jne .L_0036
push 0
push 5
push offset _Lt_0013
push -1
lea ebx, [ebp-40]
push ebx
call _fb_StrAssign@20
jmp .L_0037
.L_0036:
.L_0035:
cmp dword ptr [ebp-28], 2
jne .L_0039
push 0
push 5
push offset _Lt_003A
push -1
lea ebx, [ebp-40]
push ebx
call _fb_StrAssign@20
jmp .L_003B
.L_0039:
.L_0038:
cmp dword ptr [ebp-28], 3
jne .L_003D
push 0
push 13
push offset _Lt_003E
push -1
lea ebx, [ebp-40]
push ebx
call _fb_StrAssign@20
jmp .L_003F
.L_003D:
.L_003C:
cmp dword ptr [ebp-28], 4
jne .L_0041
push 0
push 8
push offset _Lt_0042
push -1
lea ebx, [ebp-40]
push ebx
call _fb_StrAssign@20
jmp .L_0043
.L_0041:
.L_0040:
cmp dword ptr [ebp-28], 5
jne .L_0045
push 0
push 8
push offset _Lt_0046
push -1
lea ebx, [ebp-40]
push ebx
call _fb_StrAssign@20
jmp .L_0047
.L_0045:
.L_0044:
.L_0037:
push 1
push 86
push offset _Lt_0048
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 33
push offset _Lt_0049
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 32
push offset _Lt_004A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_004B:
push -1
push 0
push 21
push offset _Lt_004C
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_ConsoleInput@12
lea eax, [ebp-8]
push eax
call _fb_InputInt@4
mov eax, dword ptr [ebp-8]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_004E
jmp .L_004B
.L_004E:
cmp dword ptr [ebp-8], 1
jne .L_0050
push 1
push 60
push offset _Lt_0051
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0050:
cmp dword ptr [ebp-8], 2
jne .L_0053
push 1
push 53
push offset _Lt_0054
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0053:
jmp .L_0055
.L_003B:
push 1
push 85
push offset _Lt_0056
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 68
push offset _Lt_0057
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 31
push offset _Lt_0058
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 29
push offset _Lt_0059
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 56
push offset _Lt_005A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_005B:
push -1
push 0
push 21
push offset _Lt_004C
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_ConsoleInput@12
lea eax, [ebp-8]
push eax
call _fb_InputInt@4
mov eax, dword ptr [ebp-8]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_005D
jmp .L_005B
.L_005D:
cmp dword ptr [ebp-8], 1
jne .L_005F
push 1
push 71
push offset _Lt_0060
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_005F:
cmp dword ptr [ebp-8], 2
jne .L_0062
push 1
push 56
push offset _Lt_0063
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0062:
jmp .L_0055
.L_003F:
push 1
push 86
push offset _Lt_0064
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 70
push offset _Lt_0065
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 39
push offset _Lt_0066
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 19
push offset _Lt_0067
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 18
push offset _Lt_0068
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0069:
push -1
push 0
push 21
push offset _Lt_004C
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_ConsoleInput@12
lea eax, [ebp-8]
push eax
call _fb_InputInt@4
mov eax, dword ptr [ebp-8]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_006B
jmp .L_0069
.L_006B:
cmp dword ptr [ebp-8], 1
jne .L_006D
push 1
push 78
push offset _Lt_006E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_006D:
cmp dword ptr [ebp-8], 2
jne .L_0070
push 1
push 41
push offset _Lt_0071
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0070:
jmp .L_0055
.L_0043:
push 1
push 96
push offset _Lt_0072
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 78
push offset _Lt_0073
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_0055
.L_0047:
push 1
push 85
push offset _Lt_0074
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 84
push offset _Lt_0075
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 23
push offset _Lt_0076
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_0077
.L_0055:
mov eax, dword ptr [ebp-28]
imul eax, 10
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-28]
imul eax, 10
mov dword ptr [ebp-48], eax
.L_0078:
cmp dword ptr [ebp-28], 1
jne .L_007A
push 1
push 41
push offset _Lt_007B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_007A:
cmp dword ptr [ebp-28], 2
jne .L_007D
push 1
push 40
push offset _Lt_007E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_007D:
cmp dword ptr [ebp-28], 3
jne .L_0080
push 1
push 45
push offset _Lt_0081
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0080:
cmp dword ptr [ebp-28], 4
jne .L_0083
push 1
push 33
push offset _Lt_0084
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0083:
push 0
push 9
push offset _Lt_0085
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [ebp-44]
push 0
call _fb_PrintInt@12
push 1
push 9
push offset _Lt_0086
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push 15
push offset _Lt_0087
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [ebp-48]
push 0
call _fb_PrintInt@12
push 1
push 9
push offset _Lt_0086
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push 21
push offset _Lt_0088
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
lea eax, [ebp-24]
push eax
push 0
call _fb_PrintString@12
push 1
push 1
push offset _Lt_0089
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 43
push offset _Lt_008A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 45
push offset _Lt_008B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 87
push offset _Lt_008C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_008D:
push -1
push 0
push 13
push offset _Lt_008E
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_ConsoleInput@12
lea eax, [ebp-8]
push eax
call _fb_InputInt@4
mov eax, dword ptr [ebp-8]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-8]
cmp ebx, 3
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0090
jmp .L_008D
.L_0090:
cmp dword ptr [ebp-8], 1
jne .L_0092
push 1
push 30
push offset _Lt_0093
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [_Lt_00F6+4]
push dword ptr [_Lt_00F6]
call _fb_Randomize@12
push dword ptr [_Lt_00F7]
call _fb_Rnd@4
fmul qword ptr [_Lt_00F8]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_00F9]
fistp dword ptr [ebp-52]
cmp dword ptr [ebp-52], 9
jge .L_0095
mov eax, dword ptr [ebp-12]
sub dword ptr [ebp-48], eax
push 0
push 10
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [ebp-12]
push 0
call _fb_PrintInt@12
push 1
push 8
push offset _Lt_0097
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_0094
.L_0095:
push 1
push 11
push offset _Lt_0098
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0094:
.L_0092:
.L_0091:
cmp dword ptr [ebp-8], 2
jne .L_009A
push 1
push 30
push offset _Lt_009B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [_Lt_00F6+4]
push dword ptr [_Lt_00F6]
call _fb_Randomize@12
push dword ptr [_Lt_00F7]
call _fb_Rnd@4
fmul qword ptr [_Lt_00F8]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_00F9]
fistp dword ptr [ebp-52]
cmp dword ptr [ebp-52], 3
jge .L_009D
mov eax, dword ptr [ebp-12]
sal eax, 1
sub dword ptr [ebp-48], eax
push 2
push 10
push offset _Lt_0096
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 2
mov eax, dword ptr [ebp-12]
sal eax, 1
push eax
push 0
call _fb_PrintInt@12
push 1
push 8
push offset _Lt_0097
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_009C
.L_009D:
push 1
push 11
push offset _Lt_0098
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_009C:
.L_009A:
.L_0099:
cmp dword ptr [ebp-8], 3
jne .L_009F
push 1
push 18
push offset _Lt_00A0
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_009F:
push 0
push dword ptr [_Lt_00F6+4]
push dword ptr [_Lt_00F6]
call _fb_Randomize@12
push dword ptr [_Lt_00F7]
call _fb_Rnd@4
fmul qword ptr [_Lt_00FA]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_00F9]
fistp dword ptr [ebp-56]
cmp dword ptr [ebp-56], 1
jne .L_00A2
push 1
push 36
push offset _Lt_00A3
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [_Lt_00F6+4]
push dword ptr [_Lt_00F6]
call _fb_Randomize@12
push dword ptr [_Lt_00F7]
call _fb_Rnd@4
fmul qword ptr [_Lt_00F8]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_00F9]
fistp dword ptr [ebp-52]
cmp dword ptr [ebp-52], 9
jge .L_00A5
cmp dword ptr [ebp-8], 3
jne .L_00A7
push 1
push 23
push offset _Lt_00A8
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_00A6
.L_00A7:
mov eax, dword ptr [ebp-12]
sub dword ptr [ebp-44], eax
push 0
push 9
push offset _Lt_00A9
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [ebp-12]
push 0
call _fb_PrintInt@12
push 1
push 8
push offset _Lt_0097
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00A6:
jmp .L_00A4
.L_00A5:
push 1
push 10
push offset _Lt_00AA
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00A4:
.L_00A2:
.L_00A1:
cmp dword ptr [ebp-56], 2
jne .L_00AC
push 1
push 36
push offset _Lt_00AD
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [_Lt_00F6+4]
push dword ptr [_Lt_00F6]
call _fb_Randomize@12
push dword ptr [_Lt_00F7]
call _fb_Rnd@4
fmul qword ptr [_Lt_00F8]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_00F9]
fistp dword ptr [ebp-52]
cmp dword ptr [ebp-52], 3
jge .L_00AF
cmp dword ptr [ebp-8], 3
jne .L_00B1
push 0
push 30
push offset _Lt_00B2
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [ebp-12]
push 0
call _fb_PrintInt@12
push 1
push 8
push offset _Lt_00B3
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
mov eax, dword ptr [ebp-12]
sub dword ptr [ebp-44], eax
jmp .L_00B0
.L_00B1:
push 2
push 9
push offset _Lt_00A9
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 2
mov eax, dword ptr [ebp-12]
sal eax, 1
push eax
push 0
call _fb_PrintInt@12
push 1
push 8
push offset _Lt_0097
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
mov eax, dword ptr [ebp-12]
sal eax, 1
sub dword ptr [ebp-44], eax
.L_00B0:
jmp .L_00AE
.L_00AF:
push 1
push 10
push offset _Lt_00AA
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00AE:
.L_00AC:
.L_00AB:
cmp dword ptr [ebp-44], 1
jge .L_00B5
jmp .L_00B6
.L_00B5:
cmp dword ptr [ebp-48], 1
jge .L_00B8
jmp .L_00B9
.L_00B8:
jmp .L_0078
.L_00B9:
push 1
push 18
push offset _Lt_00BA
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [_Lt_00F6+4]
push dword ptr [_Lt_00F6]
call _fb_Randomize@12
push dword ptr [_Lt_00F7]
call _fb_Rnd@4
fmul qword ptr [_Lt_00F8]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
and eax, 0b1111001111111111
or eax, 0b0000010000000000
push eax
fldcw [esp]
add esp, 4
frndint
fldcw [esp]
add esp, 4
fadd qword ptr [_Lt_00F9]
fistp dword ptr [ebp-60]
cmp dword ptr [ebp-60], 1
jne .L_00BC
push 1
push 18
push offset _Lt_00BD
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00BC:
cmp dword ptr [ebp-60], 2
jne .L_00BF
push 1
push 18
push offset _Lt_00C0
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00BF:
cmp dword ptr [ebp-60], 3
jne .L_00C2
push 1
push 17
push offset _Lt_00C3
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00C2:
cmp dword ptr [ebp-60], 4
jne .L_00C5
push 1
push 16
push offset _Lt_00C6
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00C5:
cmp dword ptr [ebp-60], 5
jne .L_00C8
push 1
push 19
push offset _Lt_00C9
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00C8:
cmp dword ptr [ebp-60], 6
jne .L_00CB
push 1
push 17
push offset _Lt_00CC
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00CB:
cmp dword ptr [ebp-60], 7
jne .L_00CE
push 1
push 17
push offset _Lt_00CF
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00CE:
cmp dword ptr [ebp-60], 8
jne .L_00D1
push 1
push 23
push offset _Lt_00D2
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00D1:
cmp dword ptr [ebp-60], 9
jne .L_00D4
push 1
push 23
push offset _Lt_00D5
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00D4:
cmp dword ptr [ebp-60], 10
jne .L_00D7
push 1
push 18
push offset _Lt_00D8
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00D7:
push 0
push 22
push offset _Lt_00D9
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [ebp-60]
push 0
call _fb_PrintInt@12
push 1
push 25
push offset _Lt_00DA
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push 26
push offset _Lt_00DB
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
push dword ptr [ebp-12]
push 0
call _fb_PrintInt@12
push 1
push 25
push offset _Lt_00DA
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 25
push offset _Lt_00DC
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 23
push offset _Lt_00DD
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00DE:
push -1
push 0
push 2
push offset _Lt_000A
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_ConsoleInput@12
lea eax, [ebp-8]
push eax
call _fb_InputInt@4
mov eax, dword ptr [ebp-8]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00E0
jmp .L_00DE
.L_00E0:
cmp dword ptr [ebp-8], 1
jne .L_00E2
mov ebx, dword ptr [ebp-60]
mov dword ptr [ebp-12], ebx
.L_00E2:
inc dword ptr [ebp-28]
jmp .L_0014
.L_00B6:
push 1
push 14
push offset _Lt_00E3
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 11
push offset _Lt_00E4
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 8
push offset _Lt_00E5
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00E6:
push -1
push 0
push 2
push offset _Lt_000A
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_ConsoleInput@12
lea eax, [ebp-8]
push eax
call _fb_InputInt@4
mov eax, dword ptr [ebp-8]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00E8
jmp .L_00E6
.L_00E8:
cmp dword ptr [ebp-8], 1
jne .L_00EA
jmp .L_0004
.L_00EA:
cmp dword ptr [ebp-8], 2
jne .L_00EC
push 0
call _fb_End@4
.L_00EC:
.L_0077:
push 1
push 8
push offset _Lt_00ED
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 14
push offset _Lt_00EE
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 8
push offset _Lt_00E5
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_00EF:
push -1
push 0
push 2
push offset _Lt_000A
call _fb_StrAllocTempDescZEx@8
push eax
call _fb_ConsoleInput@12
lea eax, [ebp-8]
push eax
call _fb_InputInt@4
mov eax, dword ptr [ebp-8]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00F1
jmp .L_00EF
.L_00F1:
cmp dword ptr [ebp-8], 1
jne .L_00F3
jmp .L_0004
.L_00F3:
cmp dword ptr [ebp-8], 2
jne .L_00F5
push 0
call _fb_End@4
.L_00F5:
lea ebx, [ebp-40]
push ebx
call _fb_StrDelete@4
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
.L_0003:
push 0
call _fb_End@4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0005:	.ascii	"dungeon rpg (spaghetti edition)\0"
.balign 4
_Lt_0006:	.ascii	"--------------------------------\0"
.balign 4
_Lt_0007:	.ascii	"[1] begin\0"
.balign 4
_Lt_0008:	.ascii	"[2] exit\0"
.balign 4
_Lt_000A:	.ascii	"> \0"
.balign 4
_Lt_0012:	.ascii	"a stick\0"
.balign 4
_Lt_0013:	.ascii	"cell\0"
.balign 4
_Lt_0017:	.ascii	"nothing\0"
.balign 4
_Lt_001C:	.ascii	"a stone\0"
.balign 4
_Lt_001F:	.ascii	"a club\0"
.balign 4
_Lt_0022:	.ascii	"a rod\0"
.balign 4
_Lt_0025:	.ascii	"a hammer\0"
.balign 4
_Lt_0028:	.ascii	"a fork\0"
.balign 4
_Lt_002B:	.ascii	"a nail\0"
.balign 4
_Lt_002E:	.ascii	"a glass shiv\0"
.balign 4
_Lt_0031:	.ascii	"a metal shiv\0"
.balign 4
_Lt_0034:	.ascii	"a knife\0"
.balign 4
_Lt_003A:	.ascii	"hall\0"
.balign 4
_Lt_003E:	.ascii	"storage room\0"
.balign 4
_Lt_0042:	.ascii	"outside\0"
.balign 4
_Lt_0046:	.ascii	"escaped\0"
.balign 4
_Lt_0048:	.ascii	"You are in your cell. Another prisoner comes in and accuses you of stealing something.\0"
.balign 4
_Lt_0049:	.ascii	"[1] Tell him you didn't steal it.\0"
.balign 4
_Lt_004A:	.ascii	"[2] Tell him to go fuck himself.\0"
.balign 4
_Lt_004C:	.ascii	"How do you respond?> \0"
.balign 4
_Lt_0051:	.ascii	"The hell you didn't, he shouts, then squares up for a fight.\0"
.balign 4
_Lt_0054:	.ascii	"He shoves you. Time to remind him whose cell he's in.\0"
.balign 4
_Lt_0056:	.ascii	"You enter the hall after wiping the floor with that prisoner. A different prisoner is\0"
.balign 4
_Lt_0057:	.ascii	"looking for his friend and can't find him. He sees the blood on you.\0"
.balign 4
_Lt_0058:	.ascii	"'What did you do?!' he demands.\0"
.balign 4
_Lt_0059:	.ascii	"[1] Tell him you did nothing.\0"
.balign 4
_Lt_005A:	.ascii	"[2] Tell him his friend started what he couldn't finish.\0"
.balign 4
_Lt_0060:	.ascii	"He tells you the blood on you says something different, and rushes you.\0"
.balign 4
_Lt_0063:	.ascii	"He tells you he'll finish what his friend started, then.\0"
.balign 4
_Lt_0064:	.ascii	"After handing out another beatdown, you know you've caught attention so you run to the\0"
.balign 4
_Lt_0065:	.ascii	"nearest storage room to hide. Unfortunately, there's a guard in there.\0"
.balign 4
_Lt_0066:	.ascii	"'What are you doing in here?' he yells.\0"
.balign 4
_Lt_0067:	.ascii	"[1] 'I got lost...'\0"
.balign 4
_Lt_0068:	.ascii	"[2] 'Your mother.'\0"
.balign 4
_Lt_006E:	.ascii	"He tells he'll teach you not to leave your cells, then adopts a combat stance.\0"
.balign 4
_Lt_0071:	.ascii	"He tells you he's about to hurt you good.\0"
.balign 4
_Lt_0072:	.ascii	"You know you're in for it after attacking a guard, so you grab his key, unlock a door, and exit.\0"
.balign 4
_Lt_0073:	.ascii	"But another guard was waiting for you, and he doesn't even waste time talking.\0"
.balign 4
_Lt_0074:	.ascii	"After fighting the guard who ambushed you outside, you decide not to stick around for\0"
.balign 4
_Lt_0075:	.ascii	"much longer. You put on the guard's uniform and leave through the gates... hopefully\0"
.balign 4
_Lt_0076:	.ascii	"never to be back again.\0"
.balign 4
_Lt_007B:	.ascii	"You are fighting a prisoner in your cell.\0"
.balign 4
_Lt_007E:	.ascii	"You are fighting a prisoner in the hall.\0"
.balign 4
_Lt_0081:	.ascii	"You are fighting a guard in the storage room.\0"
.balign 4
_Lt_0084:	.ascii	"You are fighting a guard outside.\0"
.balign 4
_Lt_0085:	.ascii	"You have \0"
.balign 4
_Lt_0086:	.ascii	" HP left.\0"
.balign 4
_Lt_0087:	.ascii	"Your enemy has \0"
.balign 4
_Lt_0088:	.ascii	"You're equipped with \0"
.balign 4
_Lt_0089:	.ascii	".\0"
.balign 4
_Lt_008A:	.ascii	"[1] Light attack (low dmg, low miss chance)\0"
.balign 4
_Lt_008B:	.ascii	"[2] Heavy attack (high dmg, high miss chance)\0"
.balign 4
_Lt_008C:	.ascii	"[3] Block (no damage from enemy's light attack, lower damage from enemy's heavy attack)\0"
.balign 4
_Lt_008E:	.ascii	"Your action> \0"
.balign 4
_Lt_0093:	.ascii	"You executed a light attack...\0"
.balign 4
_Lt_0096:	.ascii	"You dealt \0"
.balign 4
_Lt_0097:	.ascii	" damage!\0"
.balign 4
_Lt_0098:	.ascii	"You missed.\0"
.balign 4
_Lt_009B:	.ascii	"You executed a heavy attack...\0"
.balign 4
_Lt_00A0:	.ascii	"You're blocking...\0"
.balign 4
_Lt_00A3:	.ascii	"The enemy executed a light attack...\0"
.balign 4
_Lt_00A8:	.ascii	"You blocked his attack.\0"
.balign 4
_Lt_00A9:	.ascii	"You took \0"
.balign 4
_Lt_00AA:	.ascii	"He missed.\0"
.balign 4
_Lt_00AD:	.ascii	"The enemy executed a heavy attack...\0"
.balign 4
_Lt_00B2:	.ascii	"Due to blocking you only took \0"
.balign 4
_Lt_00B3:	.ascii	" damage.\0"
.balign 4
_Lt_00BA:	.ascii	"You won the fight.\0"
.balign 4
_Lt_00BD:	.ascii	"You found a stick.\0"
.balign 4
_Lt_00C0:	.ascii	"You found a stone.\0"
.balign 4
_Lt_00C3:	.ascii	"You found a club.\0"
.balign 4
_Lt_00C6:	.ascii	"You found a rod.\0"
.balign 4
_Lt_00C9:	.ascii	"You found a hammer.\0"
.balign 4
_Lt_00CC:	.ascii	"You found a fork.\0"
.balign 4
_Lt_00CF:	.ascii	"You found a nail.\0"
.balign 4
_Lt_00D2:	.ascii	"You found a glass shiv.\0"
.balign 4
_Lt_00D5:	.ascii	"You found a metal shiv.\0"
.balign 4
_Lt_00D8:	.ascii	"You found a knife.\0"
.balign 4
_Lt_00D9:	.ascii	"This new weapon deals \0"
.balign 4
_Lt_00DA:	.ascii	" damage per light attack.\0"
.balign 4
_Lt_00DB:	.ascii	"Your current weapon deals \0"
.balign 4
_Lt_00DC:	.ascii	"[1] Switch to this weapon\0"
.balign 4
_Lt_00DD:	.ascii	"[2] Keep current weapon\0"
.balign 4
_Lt_00E3:	.ascii	"You have died.\0"
.balign 4
_Lt_00E4:	.ascii	"[1] Restart\0"
.balign 4
_Lt_00E5:	.ascii	"[2] Quit\0"
.balign 4
_Lt_00ED:	.ascii	"You won!\0"
.balign 4
_Lt_00EE:	.ascii	"[1] Play again\0"
.balign 8
_Lt_00F6:	.quad	0xBFF0000000000000
.balign 4
_Lt_00F7:	.long	0x3F800000
.balign 8
_Lt_00F8:	.quad	0x4024000000000000
.balign 8
_Lt_00F9:	.quad	0x3FF0000000000000
.balign 8
_Lt_00FA:	.quad	0x4000000000000000
