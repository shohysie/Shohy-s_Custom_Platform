EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @31 GOTO extramodify	//������������֪�������Ķ���������������Ĭ�Ͽ�����
END

APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN extramodify
		SAY @32	//������������֪�������Ķ�������
		IF ~~ THEN REPLY @33 DO ~SetGlobal("SH#EXM0","GLOBAL",0)~ GOTO 0	//������������ʿ������ʫ�˵�ʩ���ȼ�
		IF ~~ THEN REPLY @34 DO ~SetGlobal("SH#EXM0","GLOBAL",1)~ GOTO 0	//������������ʿ������ʫ�˵�ʩ���ȼ�
		IF ~~ THEN REPLY @35 DO ~SetGlobal("SH#EXM0","GLOBAL",2)~ GOTO 0	//�رն�����������
		IF ~~ THEN REPLY @14 GOTO 0	//�����ı䣬������һ��ѡ��
		IF ~~ THEN REPLY @15 GOTO detail1	//�Ķ���ϸ˵��
	END
	
	IF ~~ THEN BEGIN detail1
		SAY @26
		IF ~~ THEN GOTO detail2
	END
	
	IF ~~ THEN BEGIN detail2
		SAY @27
		IF ~~ THEN GOTO detail3
	END
	
	IF ~~ THEN BEGIN detail3
		SAY @28
		IF ~~ THEN GOTO detail4
	END	
	
	IF ~~ THEN BEGIN detail4
		SAY @29
		IF ~~ THEN GOTO extramodify
	END
	
END
