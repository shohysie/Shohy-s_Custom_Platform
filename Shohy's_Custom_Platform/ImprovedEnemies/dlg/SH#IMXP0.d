EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @61 GOTO extraxp	//���õ�������ʱ������󹥻���һ�����飨Ĭ�Ϲرգ�
END

APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN extraxp
		SAY @62	//���õ�����ֵ����Ҿ���͵ȼ�����
		IF ~~ THEN REPLY @63 DO ~SetGlobal("SH#IMXP0","GLOBAL",0)~ GOTO 0	//�رգ����˲������⾭��
		IF ~~ THEN REPLY @64 DO ~SetGlobal("SH#IMXP0","GLOBAL",1)~ GOTO 0	//����ÿ���ȼ�����50����
		IF ~~ THEN REPLY @65 DO ~SetGlobal("SH#IMXP0","GLOBAL",2)~ GOTO 0	//����ÿ���ȼ�����200����
		IF ~~ THEN REPLY @66 DO ~SetGlobal("SH#IMXP0","GLOBAL",3)~ GOTO 0	//����ÿ���ȼ�����500����
		IF ~~ THEN REPLY @67 DO ~SetGlobal("SH#IMXP0","GLOBAL",4)~ GOTO 0	//����ÿ���ȼ�����1000����
		IF ~~ THEN REPLY @14 GOTO 0	//�����ı䣬������һ��ѡ��
	END

END
