EXTEND_BOTTOM ~SH#CPF0Z~ 0
	IF ~~ THEN REPLY @61 GOTO extraxp	//设置敌人死亡时给予最后攻击者一定经验（默认关闭）
END

APPEND ~SH#CPF0Z~
	IF ~~ THEN BEGIN extraxp
		SAY @62	//设置敌人数值随玩家经验和等级提升
		IF ~~ THEN REPLY @63 DO ~SetGlobal("SH#IMXP0","GLOBAL",0)~ GOTO 0	//关闭，敌人不给额外经验
		IF ~~ THEN REPLY @64 DO ~SetGlobal("SH#IMXP0","GLOBAL",1)~ GOTO 0	//敌人每个等级给予50经验
		IF ~~ THEN REPLY @65 DO ~SetGlobal("SH#IMXP0","GLOBAL",2)~ GOTO 0	//敌人每个等级给予200经验
		IF ~~ THEN REPLY @66 DO ~SetGlobal("SH#IMXP0","GLOBAL",3)~ GOTO 0	//敌人每个等级给予500经验
		IF ~~ THEN REPLY @67 DO ~SetGlobal("SH#IMXP0","GLOBAL",4)~ GOTO 0	//敌人每个等级给予1000经验
		IF ~~ THEN REPLY @14 GOTO 0	//不做改变，返回上一层选项
	END

END
