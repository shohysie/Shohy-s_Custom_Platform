EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @215 GOTO lobplus//���ðͶ��Ų�ģʽ�µ��������������̣�Ĭ�Ϲرգ���δ�����Ų��Ѷ��������ã�
END



APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN lobplus
		SAY @216	//���ðͶ��Ų�ģʽ�µ���������������
		IF ~~ THEN REPLY @217 DO ~SetGlobal("LOB#fixplus","GLOBAL",0)~ GOTO 0	//�������������ܵ��Ų��Ѷȼӳ�
		IF ~~ THEN REPLY @218 DO ~SetGlobal("LOB#fixplus","GLOBAL",1)~ GOTO 0	//���˵ȼ�Խ���ܵ��ļӳ�Խ����ֻ��25�������Ų��Ѷ�13�������ϵ�����Ż����������Ų��Ѷȼӳ�
		IF ~~ THEN REPLY @14 GOTO 0	//�����ı䣬������һ��ѡ��
		IF ~~ THEN REPLY @15 GOTO detail1	//�Ķ���ϸ˵��
	END
	
	IF ~~ THEN BEGIN detail1
		SAY @256
		IF ~~ THEN GOTO detail2
	END
	
	IF ~~ THEN BEGIN detail2
		SAY @257
		IF ~~ THEN GOTO detail3
	END
	
	IF ~~ THEN BEGIN detail3
		SAY @258
		IF ~~ THEN GOTO detail4
	END
	
	IF ~~ THEN BEGIN detail4
		SAY @259
		IF ~~ THEN GOTO lobplus
	END

END
