EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @51 GOTO improveenemy	//���õ�����ֵ����Ҿ���͵ȼ�������Ĭ�Ϲرգ�
END

APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN improveenemy
		SAY @52	//���õ�����ֵ����Ҿ���͵ȼ�����
		IF ~~ THEN REPLY @53 DO ~SetGlobal("SH#IMPE0","GLOBAL",0)~ GOTO 0	//������ֵ������
		IF ~~ THEN REPLY @54 DO ~SetGlobal("SH#IMPE0","GLOBAL",1)~ GOTO 0	//������ֵ��������
		IF ~~ THEN REPLY @55 DO ~SetGlobal("SH#IMPE0","GLOBAL",2)~ GOTO 0	//������ֵ�е�����
		IF ~~ THEN REPLY @56 DO ~SetGlobal("SH#IMPE0","GLOBAL",3)~ GOTO 0	//������ֵ�������
		IF ~~ THEN REPLY @14 GOTO 0	//�����ı䣬������һ��ѡ��
		IF ~~ THEN REPLY @15 GOTO detail0	//�Ķ���ϸ˵��
	END
	
	IF ~~ THEN BEGIN detail0
		SAY @45
		IF ~~ THEN GOTO detail1
	END
	
	IF ~~ THEN BEGIN detail1
		SAY @46
		IF ~~ THEN GOTO detail2
	END
	
	IF ~~ THEN BEGIN detail2
		SAY @47
		IF ~~ THEN GOTO detail3
	END
	
	IF ~~ THEN BEGIN detail3
		SAY @48
		IF ~~ THEN GOTO improveenemy
	END

END
