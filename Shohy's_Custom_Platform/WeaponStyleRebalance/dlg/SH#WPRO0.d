EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @141 GOTO wpstrebalance	//������������ƽ�⣨Ĭ�Ͽ�����
END

APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN wpstrebalance
		SAY @142	//������������ƽ��
		IF ~~ THEN REPLY @143 DO ~SetGlobal("PROFBACK","LOCALS",1) SetGlobal("EXISTING","LOCALS",1) SetGlobal("SH#WPROP","GLOBAL",1)~ GOTO 0	//�ر�����Ч�����˻ؿ۵�����
		IF ~~ THEN REPLY @144 DO ~SetGlobal("SH#WPROP","GLOBAL",1)~ GOTO 0	//�ر�����Ч�����������۳�������
		IF ~~ THEN REPLY @146 DO ~SetGlobal("SH#WPROP","GLOBAL",0)~ GOTO 0	//��������Ч�������Ҿ���Ч
		IF ~~ THEN REPLY @147 DO ~SetGlobal("SH#WPROP","GLOBAL",2)~ GOTO 0	//��������Ч�������ҷ���Ա��Ч
		IF ~~ THEN REPLY @148 DO ~SetGlobal("SH#WPROP","GLOBAL",3)~ GOTO 0	//�ر�������Ч�����������������������Ҿ���Ч
		IF ~~ THEN REPLY @149 DO ~SetGlobal("SH#WPROP","GLOBAL",4)~ GOTO 0	//�ر�������Ч�����������������������ҷ���Ա��Ч
		IF ~~ THEN REPLY @14 GOTO 0	//�����ı䣬������һ��ѡ��
		IF ~~ THEN REPLY @151 GOTO detaila1	//�Ķ���������ƽ�����ϸ˵��
		IF ~~ THEN REPLY @152 GOTO detailb1	//�Ķ���������ƽ�����ϸ˵��
		IF ~~ THEN REPLY @153 GOTO detailc1	//�Ķ��������ɿ�Ͷ�������������ϸ˵��
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
		IF ~~ THEN GOTO wpstrebalance
	END
	
	IF ~~ THEN BEGIN detailc1
		SAY @181
		IF ~~ THEN GOTO detailb2
	END
	
	IF ~~ THEN BEGIN detailc2
		SAY @182
		IF ~~ THEN GOTO detailb3
	END
	
	IF ~~ THEN BEGIN detailc3
		SAY @183
		IF ~~ THEN GOTO wpstrebalance
	END
	
END
