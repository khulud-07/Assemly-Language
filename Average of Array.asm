.MODEL SMALL
.STACK 100H

.DATA
       ARRAY DB 1,4,2,3,8,6,7,5,9
     AVG DB ?
     MSG DB "AVERAGE = $"


.CODE

MAIN PROC

    START:
      MOV AX,DATA
      MOV DS,AX

      LEA SI,ARRAY 
      LEA DX,MSG
      MOV AH,9
      INT 21H

      MOV AX,00
      MOV BL,9

      MOV CX,9 
      LOOP1:
           ADD AL,ARRAY[SI]
           INC SI
      LOOP LOOP1

      DIV BL

      ADD AL,30H

      MOV DL,AL
      MOV AH,2
      INT 21H

      MOV AH,4CH
      INT 21H     

    MAIN ENDP
END MAIN
