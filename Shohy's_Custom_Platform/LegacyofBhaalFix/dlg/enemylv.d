EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @221 GOTO lvfixandability	//���õ��������������ȼ�����ü���
END



APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN lvfixandability
		SAY @221	//���õ��������������ȼ�����ü���
		IF ~~ THEN REPLY @222 GOTO lvlup	//���õͼ����˳ɳ�
		IF ~~ THEN REPLY @225 GOTO normalability	//���õ���ʩչ��ͨ���ܣ�������񱩡��ٲ���������㶾��
		IF ~~ THEN REPLY @230 GOTO highlvability	//���õ���ʩչ�߽׼��ܣ�����ǿ�͡������硢��ɱ��
		IF ~~ THEN REPLY @235 GOTO raceability	//���õ���ʩչ�����Ƿ�������Ӱ��
		IF ~~ THEN REPLY @14 GOTO 0	//������ϣ�������һ��ѡ��
		IF ~~ THEN REPLY @241 GOTO detaila1	//�Ķ�����������������ȼ�������ϸ˵��
		IF ~~ THEN REPLY @242 GOTO detailb1	//�Ķ������˿���ʹ�ü��ܡ�����ϸ˵��
	END

	IF ~~ THEN BEGIN lvlup
		SAY @222	//���õͼ����˳ɳ�
		IF ~~ THEN REPLY @223 DO ~SetGlobal("SH#LVFIX","GLOBAL",0)~ GOTO lvfixandability	//�ͼ����˲������Ǿ�����ֵ�����ȼ���Ĭ�ϣ�
		IF ~~ THEN REPLY @224 DO ~SetGlobal("SH#LVFIX","GLOBAL",1)~ GOTO lvfixandability	//�ͼ����˻��������ӽ����ǵĳ̶ȣ��͵ȼ���ص�����Ҳ����
		IF ~~ THEN REPLY @14 GOTO lvfixandability	//�����ı䣬������һ��ѡ��
	END
	
	IF ~~ THEN BEGIN normalability
		SAY @226	//���õ���ʩչ��ͨ����
		IF ~~ THEN REPLY @227 DO ~SetGlobal("SH#SKILLNLA","GLOBAL",0)~ GOTO lvfixandability	//���˲������ʩչ��ͨ���ܣ�Ĭ�ϣ�
		IF ~~ THEN REPLY @228 DO ~SetGlobal("SH#SKILLNLA","GLOBAL",1)~ GOTO lvfixandability	//������20%-50%����ʩչ��ͨ���ܣ���������˵ȼ�����
		IF ~~ THEN REPLY @229 DO ~SetGlobal("SH#SKILLNLA","GLOBAL",2)~ GOTO lvfixandability	//������40%-100%����ʩչ��ͨ���ܣ���������˵ȼ�����
		IF ~~ THEN REPLY @14 GOTO lvfixandability	//�����ı䣬������һ��ѡ��
	END
	
	IF ~~ THEN BEGIN highlvability
		SAY @231	//���õ���ʩչ�߽׼���
		IF ~~ THEN REPLY @232 DO ~SetGlobal("SH#SKILLHLA","GLOBAL",0)~ GOTO lvfixandability	//���˲������ʩչ�߽׼��ܣ�Ĭ�ϣ�
		IF ~~ THEN REPLY @233 DO ~SetGlobal("SH#SKILLHLA","GLOBAL",1)~ GOTO lvfixandability	//����ʩչ1-3�����ܣ�������ͨ���ܺ͸߽׼���
		IF ~~ THEN REPLY @234 DO ~SetGlobal("SH#SKILLHLA","GLOBAL",2)~ GOTO lvfixandability	//����ʩչԼ4�����ܣ�������ͨ���ܺ͸߽׼���
		IF ~~ THEN REPLY @14 GOTO lvfixandability	//�����ı䣬������һ��ѡ��
	END
	
	IF ~~ THEN BEGIN raceability
		SAY @235	//���õ���ʩչ�����Ƿ�������Ӱ��
		IF ~~ THEN REPLY @236 DO ~SetGlobal("SH#SKILLRACE","GLOBAL",0)~ GOTO lvfixandability	//�ǻ���������ʩչ���ܣ�Ұ������ʩչ���ܸ��ʼ��룬���ǻ����岻ʩչ���ܣ�Ĭ�ϣ�
		IF ~~ THEN REPLY @237 DO ~SetGlobal("SH#SKILLRACE","GLOBAL",1)~ GOTO lvfixandability	//�������嶼��������ʩչ����
		IF ~~ THEN REPLY @14 GOTO lvfixandability	//�����ı䣬������һ��ѡ��
	END
	
	IF ~~ THEN BEGIN detaila1
		SAY @261
		IF ~~ THEN GOTO detaila2
	END
	
	IF ~~ THEN BEGIN detaila2
		SAY @262
		IF ~~ THEN GOTO lvfixandability
	END
	
	IF ~~ THEN BEGIN detailb1
		SAY @266
		IF ~~ THEN GOTO detailb2
	END
	
	IF ~~ THEN BEGIN detailb2
		SAY @267
		IF ~~ THEN GOTO lvfixandability
	END

END
