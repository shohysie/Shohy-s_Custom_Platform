EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @141 GOTO wpstrebalance	//������������ƽ�⣨Ĭ�Ͽ�����
END

APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN wpstrebalance
		SAY @142	//������������ƽ��
		IF ~~ THEN REPLY @145 DO ~SetGlobal("SH#WPROP","GLOBAL",1)~ GOTO 0	//�ر���������ƽ��
		IF ~~ THEN REPLY @146 DO ~SetGlobal("SH#WPROP","GLOBAL",0)~ GOTO 0	//��������Ч�������Ҿ���Ч
		IF ~~ THEN REPLY @147 DO ~SetGlobal("SH#WPROP","GLOBAL",2)~ GOTO 0	//��������Ч�������ҷ���Ա��Ч
		IF ~~ THEN REPLY @148 DO ~SetGlobal("SH#WPROP","GLOBAL",3)~ GOTO 0	//�ر�������Ч�����������������������Ҿ���Ч
		IF ~~ THEN REPLY @149 DO ~SetGlobal("SH#WPROP","GLOBAL",4)~ GOTO 0	//�ر�������Ч�����������������������ҷ���Ա��Ч
		IF ~~ THEN REPLY @156 GOTO icon	//������������ƽ����Чʱ�Ƿ���ʾͼ�������ʾ
		IF ~~ THEN REPLY @14 GOTO 0	//�����ı䣬������һ��ѡ��
		IF ~~ THEN REPLY @151 GOTO detaila1	//�Ķ���������ƽ�����ϸ˵��
		IF ~~ THEN REPLY @152 GOTO detailb1	//�Ķ���������ƽ�����ϸ˵��
		IF ~~ THEN REPLY @153 GOTO detailc1	//�Ķ��������ɿ�Ͷ�������������ϸ˵��
	END
	
	IF ~~ THEN BEGIN icon
		SAY @156
		IF ~~ THEN REPLY @157 DO ~SetGlobal("SH#WPICON","GLOBAL",1)~ GOTO wpstrebalance	//������ͷ������ʾ��Ӣ�����š�ͼ�������ʾ
		IF ~~ THEN REPLY @158 DO ~SetGlobal("SH#WPICON","GLOBAL",0)~ GOTO wpstrebalance	//�ر�ͼ����ʾ��Ĭ�ϣ�
		IF ~~ THEN REPLY @14 GOTO wpstrebalance	//�����ı䣬������һ��ѡ��
	END
	
	IF ~~ THEN BEGIN detaila1
		SAY @161
		IF ~~ THEN GOTO detaila2
	END
	
	IF ~~ THEN BEGIN detaila2
		SAY @162
		IF ~~ THEN GOTO detaila3
	END
	
	IF ~~ THEN BEGIN detaila3
		SAY @163
		IF ~~ THEN GOTO detaila4
	END
	
	IF ~~ THEN BEGIN detaila4
		SAY @164
		IF ~~ THEN GOTO detaila5
	END
	
	IF ~~ THEN BEGIN detaila5
		SAY @165
		IF ~~ THEN GOTO wpstrebalance
	END
	
	IF ~~ THEN BEGIN detailb1
		SAY @171
		IF ~~ THEN GOTO detailb2
	END
	
	IF ~~ THEN BEGIN detailb2
		SAY @172
		IF ~~ THEN GOTO detailb3
	END
	
	IF ~~ THEN BEGIN detailb3
		SAY @173
		IF ~~ THEN GOTO detailb4
	END
	
	IF ~~ THEN BEGIN detailb4
		SAY @174
		IF ~~ THEN GOTO detailb5
	END
	
	IF ~~ THEN BEGIN detailb5
		SAY @175
		IF ~~ THEN GOTO detailb6
	END
	
	IF ~~ THEN BEGIN detailb6
		SAY @176
		IF ~~ THEN GOTO detailb7
	END
	
	IF ~~ THEN BEGIN detailb7
		SAY @177
		IF ~~ THEN GOTO wpstrebalance
	END
	
	IF ~~ THEN BEGIN detailc1
		SAY @186
		IF ~~ THEN GOTO wpstrebalance
	END
	
END
