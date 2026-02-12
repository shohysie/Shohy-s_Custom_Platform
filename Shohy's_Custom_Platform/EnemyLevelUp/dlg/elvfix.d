EXTEND_BOTTOM ~SY#CPF0Z~ 0
	IF ~~ THEN REPLY @221 GOTO lvfixandability	//设置敌人随主角提升等级并获得技能
END

APPEND ~SY#CPF0Z~
	IF ~~ THEN BEGIN lvfixandability
		SAY @221	//设置敌人随主角提升等级并获得技能
		IF ~~ THEN REPLY @222 GOTO lvlup	//设置低级敌人成长
		IF ~~ THEN REPLY @225 GOTO normalability	//设置敌人施展普通技能（例如如狂暴、百步穿杨、武器淬毒）
		IF ~~ THEN REPLY @230 GOTO highlvability	//设置敌人施展高阶技能（例如强韧、大旋风、暗杀）
		IF ~~ THEN REPLY @235 GOTO raceability	//设置敌人施展技能是否受种族影响
		IF ~~ THEN REPLY @14 GOTO 0	//设置完毕，返回上一层选项
		IF ~~ THEN REPLY @241 GOTO detaila1	//阅读“敌人随玩家提升等级”的详细说明
		IF ~~ THEN REPLY @242 GOTO detailb1	//阅读“敌人可以使用技能”的详细说明
	END

	IF ~~ THEN BEGIN lvlup
		SAY @222	//设置低级敌人成长
		IF ~~ THEN REPLY @223 DO ~SetGlobal("SY#LVFIX","GLOBAL",0)~ GOTO lvfixandability	//低级敌人不随主角经验数值提升等级
		IF ~~ THEN REPLY @224 DO ~SetGlobal("SY#LVFIX","GLOBAL",1)~ GOTO lvfixandability	//低级敌人会升级到接近主角的程度，和等级相关的数据也增加
		IF ~!GlobalGT("SY#LVFIX","GLOBAL",0)~ THEN REPLY @210 GOTO lvfixandability	//保留当前设置（不提升等级）并返回上一层选项
		IF ~GlobalGT("SY#LVFIX","GLOBAL",0)~ THEN REPLY @211 GOTO lvfixandability	//保留当前设置（提升等级）并返回上一层选项
	END
	
	IF ~~ THEN BEGIN normalability
		SAY @226	//设置敌人施展普通技能
		IF ~~ THEN REPLY @227 DO ~SetGlobal("SY#SKILLNLA","GLOBAL",0)~ GOTO lvfixandability	//敌人不会额外施展普通技能
		IF ~~ THEN REPLY @228 DO ~SetGlobal("SY#SKILLNLA","GLOBAL",1)~ GOTO lvfixandability	//敌人以20%-50%概率施展普通技能，概率随敌人等级增加
		IF ~~ THEN REPLY @229 DO ~SetGlobal("SY#SKILLNLA","GLOBAL",2)~ GOTO lvfixandability	//敌人以40%-100%概率施展普通技能，概率随敌人等级增加
		IF ~!GlobalGT("SY#SKILLNLA","GLOBAL",0)~ THEN REPLY @212 GOTO lvfixandability	//保留当前设置（不施展普通技能）并返回上一层选项
		IF ~Global("SY#SKILLNLA","GLOBAL",1)~ THEN REPLY @213 GOTO lvfixandability	//保留当前设置（20%-50%概率施展）并返回上一层选项
		IF ~Global("SY#SKILLNLA","GLOBAL",2)~ THEN REPLY @214 GOTO lvfixandability	//保留当前设置（40%-100%概率施展）并返回上一层选项
	END
	
	IF ~~ THEN BEGIN highlvability
		SAY @231	//设置敌人施展高阶技能
		IF ~~ THEN REPLY @232 DO ~SetGlobal("SY#SKILLHLA","GLOBAL",0)~ GOTO lvfixandability	//敌人不会额外施展高阶技能
		IF ~~ THEN REPLY @233 DO ~SetGlobal("SY#SKILLHLA","GLOBAL",1)~ GOTO lvfixandability	//敌人施展1-3个技能，包括普通技能和高阶技能
		IF ~~ THEN REPLY @234 DO ~SetGlobal("SY#SKILLHLA","GLOBAL",2)~ GOTO lvfixandability	//敌人施展约4个技能，包括普通技能和高阶技能
		IF ~!GlobalGT("SY#SKILLHLA","GLOBAL",0)~ THEN REPLY @215 GOTO lvfixandability	//保留当前设置（不施展高阶技能）并返回上一层选项
		IF ~Global("SY#SKILLHLA","GLOBAL",1)~ THEN REPLY @216 GOTO lvfixandability	//保留当前设置（连续施展1-3个高阶技能）并返回上一层选项
		IF ~Global("SY#SKILLHLA","GLOBAL",2)~ THEN REPLY @217 GOTO lvfixandability	//保留当前设置（连续施展约4个高阶技能）并返回上一层选项
	END
	
	IF ~~ THEN BEGIN raceability
		SAY @235	//设置敌人施展技能是否受种族影响
		IF ~~ THEN REPLY @236 DO ~SetGlobal("SY#SKILLRACE","GLOBAL",0)~ GOTO lvfixandability	//智慧种族正常施展技能，野蛮种族施展技能概率减半，非智慧种族不施展技能
		IF ~~ THEN REPLY @237 DO ~SetGlobal("SY#SKILLRACE","GLOBAL",1)~ GOTO lvfixandability	//所有种族都可以正常施展技能
		IF ~!GlobalGT("SY#SKILLRACE","GLOBAL",0)~ THEN REPLY @218 GOTO lvfixandability	//保留当前设置（受种族影响）并返回上一层选项
		IF ~GlobalGT("SY#SKILLRACE","GLOBAL",0)~ THEN REPLY @219 GOTO lvfixandability	//保留当前设置（无视种族）并返回上一层选项
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
