EXTEND_BOTTOM ~SY#CPF0Z~ 0
	IF ~~ THEN REPLY @80 GOTO extraxp	//设置敌人死亡时给予最后攻击者一定经验
END

APPEND ~SY#CPF0Z~
	IF ~~ THEN BEGIN extraxp
		SAY @80	//设置敌人死亡时给予最后攻击者一定经验
		IF ~~ THEN REPLY @81 DO ~SetGlobal("SY#IMXP0","GLOBAL",0)~ GOTO 0	//关闭，敌人不给额外经验
		IF ~~ THEN REPLY @82 DO ~SetGlobal("SY#IMXP0","GLOBAL",1)~ GOTO 0	//敌人每个等级给予50经验
		IF ~~ THEN REPLY @83 DO ~SetGlobal("SY#IMXP0","GLOBAL",2)~ GOTO 0	//敌人每个等级给予200经验
		IF ~~ THEN REPLY @84 DO ~SetGlobal("SY#IMXP0","GLOBAL",3)~ GOTO 0	//敌人每个等级给予500经验
		IF ~~ THEN REPLY @85 DO ~SetGlobal("SY#IMXP0","GLOBAL",4)~ GOTO 0	//敌人每个等级给予1000经验
		IF ~!GlobalGT("SY#IMXP0","GLOBAL",0)~ THEN REPLY @86 GOTO 0	//保留当前设置（敌人不给额外经验）并返回上一层选项
		IF ~Global("SY#IMXP0","GLOBAL",1)~ THEN REPLY @87 GOTO 0	//保留当前设置（敌人每个等级给予50经验）并返回上一层选项
		IF ~Global("SY#IMXP0","GLOBAL",2)~ THEN REPLY @88 GOTO 0	//保留当前设置（敌人每个等级给予100经验）并返回上一层选项
		IF ~Global("SY#IMXP0","GLOBAL",3)~ THEN REPLY @89 GOTO 0	//保留当前设置（敌人每个等级给予200经验）并返回上一层选项
		IF ~Global("SY#IMXP0","GLOBAL",4)~ THEN REPLY @90 GOTO 0	//保留当前设置（敌人每个等级给予500经验）并返回上一层选项
	END

END
