EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @211 GOTO lobfix//���ðͶ��Ų�ģʽ����BUG������Ĭ�Ͽ�������δ�����Ų��Ѷ��������ã�
END



APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN lobfix
		SAY @212	//���ðͶ��Ų�ģʽ����BUG����
		IF ~~ THEN REPLY @213 DO ~SetGlobal("LOB#fixoff","GLOBAL",0)~ GOTO 0	//��������
		IF ~~ THEN REPLY @214 DO ~SetGlobal("LOB#fixoff","GLOBAL",1)~ GOTO 0	//�ر�����
		IF ~~ THEN REPLY @14 GOTO 0	//�����ı䣬������һ��ѡ��
		IF ~~ THEN REPLY @15 GOTO detail1	//�Ķ���ϸ˵��
	END
	
	IF ~~ THEN BEGIN detail1
		SAY @251
		IF ~~ THEN GOTO detail2
	END
	
	IF ~~ THEN BEGIN detail2
		SAY @252
		IF ~~ THEN GOTO detail3
	END
	
	IF ~~ THEN BEGIN detail3
		SAY @253
		IF ~~ THEN GOTO lobfix
	END

END
