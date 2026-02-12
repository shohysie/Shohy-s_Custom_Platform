EXTEND_BOTTOM ~SY#CPF0Z~ 0
	IF ~~ THEN REPLY @24 GOTO extramodify	//设置智力、感知、魅力的额外修正
END

APPEND ~SY#CPF0Z~
	IF ~~ THEN BEGIN extramodify
		SAY @24	//设置智力、感知、魅力的额外修正
		IF ~~ THEN REPLY @25 GOTO castlevel	//设置智力、感知、魅力对施法等级的修正（会覆盖其它修改施法等级的效果）
		IF ~~ THEN REPLY @26 GOTO castspeed	//设置智力的其它修正（模仿4e规则：修正法师的施法速度）
		IF ~~ THEN REPLY @27 GOTO otherdata	//设置感知、魅力的其它修正（模仿3e规则：感知修正武僧的防御等级，魅力修正圣武士和牧师的超度等级、萨满跳舞时的AC、诗人的歌唱效果）
		IF ~~ THEN REPLY @28 GOTO antispell	//设置高感知的对抗法术奖励（模仿2e规则：高感知人物具备对法术的额外豁免，并可免疫部分精神类法术）
		IF ~~ THEN REPLY @14 GOTO 0	//设置完毕，返回上一层选项
		IF ~~ THEN REPLY @15 GOTO detail0	//阅读详细说明
	END

	IF ~~ THEN BEGIN castlevel
		SAY @25	//设置智力、感知、魅力对施法等级的修正（会覆盖其它修改施法等级的效果）
		IF ~~ THEN REPLY @30 DO ~SetGlobal("SY#EXM0","GLOBAL",0)~ GOTO extramodify	//关闭施法等级修正
		IF ~~ THEN REPLY @31 DO ~SetGlobal("SY#EXM0","GLOBAL",1)~ GOTO extramodify	//开启修正，并以魅力修正术士和吟游诗人的施法等级
		IF ~~ THEN REPLY @32 DO ~SetGlobal("SY#EXM0","GLOBAL",2)~ GOTO extramodify	//开启修正，并以智力修正术士和吟游诗人的施法等级
		IF ~!GlobalGT("SY#EXM0","GLOBAL",0)~ THEN REPLY @33 GOTO extramodify	//保留当前设置（关闭施法等级修正）并返回上一层选项
		IF ~Global("SY#EXM0","GLOBAL",1)~ THEN REPLY @34 GOTO extramodify	//保留当前设置（魅力修正术士和诗人施法等级）并返回上一层选项
		IF ~Global("SY#EXM0","GLOBAL",2)~ THEN REPLY @35 GOTO extramodify	//保留当前设置（智力修正术士和诗人施法等级）并返回上一层选项
	END

	IF ~~ THEN BEGIN castspeed
		SAY @26	//设置智力的其它修正（模仿4e规则：修正法师的施法速度）
		IF ~~ THEN REPLY @36 DO ~SetGlobal("SY#EXM1","GLOBAL",0)~ GOTO extramodify	//关闭智力对施法速度的修正
		IF ~~ THEN REPLY @37 DO ~SetGlobal("SY#EXM1","GLOBAL",1)~ GOTO extramodify	//开启智力对施法速度的修正，仅限法师职业
		IF ~~ THEN REPLY @38 DO ~SetGlobal("SY#EXM1","GLOBAL",2)~ GOTO extramodify	//开启智力对施法速度的修正，对法师、诗人和术士都有效
		IF ~!GlobalGT("SY#EXM1","GLOBAL",0)~ THEN REPLY @39 GOTO extramodify	//保留当前设置（智力不修正法师的施法速度）并返回上一层选项
		IF ~Global("SY#EXM1","GLOBAL",1)~ THEN REPLY @40 GOTO extramodify	//保留当前设置（智力修正法师的施法速度）并返回上一层选项
		IF ~Global("SY#EXM1","GLOBAL",2)~ THEN REPLY @41 GOTO extramodify	//保留当前设置（智力修正法师、诗人和术士的施法速度）并返回上一层选项
	END

	IF ~~ THEN BEGIN otherdata
		SAY @27	//设置感知、魅力的其它修正（模仿3e规则：感知修正武僧的防御等级，魅力修正圣武士和牧师的超度等级、萨满跳舞时的AC、诗人的歌唱效果）
		IF ~~ THEN REPLY @42 DO ~SetGlobal("SY#EXM2","GLOBAL",0)~ GOTO extramodify	//关闭感知、魅力对其它数值的修正
		IF ~~ THEN REPLY @43 DO ~SetGlobal("SY#EXM2","GLOBAL",1)~ GOTO extramodify	//开启感知、魅力对其它数值的修正
		IF ~!GlobalGT("SY#EXM2","GLOBAL",0)~ THEN REPLY @44 GOTO extramodify	//保留当前设置（感知、魅力对其它数值没有修正）并返回上一层选项"
		IF ~Global("SY#EXM2","GLOBAL",1)~ THEN REPLY @45 GOTO extramodify	//保留当前设置（感知、魅力对其它数值有修正）并返回上一层选项
	END

	IF ~~ THEN BEGIN antispell
		SAY @28	//设置高感知的对抗法术奖励（模仿2e规则：高感知人物具备对法术的额外豁免，并可免疫部分精神类法术）
		IF ~~ THEN REPLY @46 DO ~SetGlobal("SY#EXM3","GLOBAL",0)~ GOTO extramodify	//关闭高感知的对抗法术奖励
		IF ~~ THEN REPLY @47 DO ~SetGlobal("SY#EXM3","GLOBAL",1)~ GOTO extramodify	//开启高感知的对抗法术奖励
		IF ~!GlobalGT("SY#EXM3","GLOBAL",0)~ THEN REPLY @48 GOTO extramodify	//保留当前设置（高感知没有对抗法术奖励）并返回上一层选项
		IF ~Global("SY#EXM3","GLOBAL",1)~ THEN REPLY @49 GOTO extramodify	//保留当前设置（高感知有对抗法术奖励）并返回上一层选项
	END

	IF ~~ THEN BEGIN detail0
		SAY @50
		IF ~~ THEN GOTO detail1
	END
	
	IF ~~ THEN BEGIN detail1
		SAY @51
		IF ~~ THEN GOTO detail2
	END
	
	IF ~~ THEN BEGIN detail2
		SAY @52
		IF ~~ THEN GOTO detail3
	END
	
	IF ~~ THEN BEGIN detail3
		SAY @53
		IF ~~ THEN GOTO detail4
	END
	
	IF ~~ THEN BEGIN detail4
		SAY @54
		IF ~~ THEN GOTO detail5
	END
	
	IF ~~ THEN BEGIN detail5
		SAY @55
		IF ~~ THEN GOTO detail6
	END
	
	IF ~~ THEN BEGIN detail6
		SAY @56
		IF ~~ THEN GOTO extramodify
	END
	
END
