EXTEND_BOTTOM ~SY#CPF0Z~ 0
	IF ~~ THEN REPLY @70 GOTO improveenemy	//设置敌人数值随玩家经验和等级提升
END

APPEND ~SY#CPF0Z~
	IF ~~ THEN BEGIN improveenemy
		SAY @71	//设置敌人数值随玩家经验和等级提升（持续五分钟，过期重复施展）
		IF ~~ THEN REPLY @72 DO ~SetGlobal("SY#IMPE0","GLOBAL",0)~ GOTO 0	//敌人数值不提升
		IF ~~ THEN REPLY @73 DO ~SetGlobal("SY#IMPE0","GLOBAL",1)~ GOTO 0	//敌人数值少许提升
		IF ~~ THEN REPLY @74 DO ~SetGlobal("SY#IMPE0","GLOBAL",2)~ GOTO 0	//敌人数值中等提升
		IF ~~ THEN REPLY @75 DO ~SetGlobal("SY#IMPE0","GLOBAL",3)~ GOTO 0	//敌人数值大幅提升
		IF ~!GlobalGT("SY#IMPE0","GLOBAL",0)~ THEN REPLY @76 GOTO 0	//保留当前设置（敌人数值不提升）并返回上一层选项
		IF ~Global("SY#IMPE0","GLOBAL",1)~ THEN REPLY @77 GOTO 0	//保留当前设置（难度一）并返回上一层选项
		IF ~Global("SY#IMPE0","GLOBAL",2)~ THEN REPLY @78 GOTO 0	//保留当前设置（难度二）并返回上一层选项
		IF ~Global("SY#IMPE0","GLOBAL",3)~ THEN REPLY @79 GOTO 0	//保留当前设置（难度三）并返回上一层选项
		IF ~~ THEN REPLY @15 GOTO detail0	//阅读详细说明
	END
	
	IF ~~ THEN BEGIN detail0
		SAY @65
		IF ~~ THEN GOTO detail1
	END
	
	IF ~~ THEN BEGIN detail1
		SAY @66
		IF ~~ THEN GOTO detail2
	END
	
	IF ~~ THEN BEGIN detail2
		SAY @67
		IF ~~ THEN GOTO detail3
	END
	
	IF ~~ THEN BEGIN detail3
		SAY @68
		IF ~~ THEN GOTO detail4
	END
	
	IF ~~ THEN BEGIN detail4
		SAY @69
		IF ~~ THEN GOTO improveenemy
	END

END
