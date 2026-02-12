EXTEND_BOTTOM ~SY#CPF0Z~ 0
	IF ~~ THEN REPLY @140 GOTO wpstrebalance	//设置武器流派平衡（已开启）
END

APPEND ~SY#CPF0Z~
	IF ~~ THEN BEGIN wpstrebalance
		SAY @140	//设置武器流派平衡
		IF ~~ THEN REPLY @134 DO ~~ GOTO decreaseslots	//设置是否通过扣星的方式达到更高的武器流派熟练等级
		IF ~~ THEN REPLY @141 DO ~SetGlobal("SY#WPROP","GLOBAL",0)~ GOTO 0	//关闭所有效果
		IF ~~ THEN REPLY @142 DO ~SetGlobal("SY#WPROP","GLOBAL",1)~ GOTO 0	//开启所有效果，敌我均有效
		IF ~~ THEN REPLY @143 DO ~SetGlobal("SY#WPROP","GLOBAL",2)~ GOTO 0	//开启所有效果，仅我方队员有效
		IF ~~ THEN REPLY @144 DO ~SetGlobal("SY#WPROP","GLOBAL",3)~ GOTO 0	//关闭武器特效，保留武器流派修正，敌我均有效
		IF ~~ THEN REPLY @145 DO ~SetGlobal("SY#WPROP","GLOBAL",4)~ GOTO 0	//关闭武器特效，保留武器流派修正，仅我方队员有效
		IF ~~ THEN REPLY @156 GOTO icon	//设置武器流派平衡生效时是否显示图标进行提示
		IF ~!GlobalGT("SY#WPROP","GLOBAL",0)~ THEN REPLY @146 GOTO 0 //保留当前设置（关闭所有功能）并返回上一层选项
		IF ~Global("SY#WPROP","GLOBAL",1)~ THEN REPLY @147 GOTO 0 //保留当前设置（开启所有功能，敌我均有效）并返回上一层选项
		IF ~Global("SY#WPROP","GLOBAL",2)~ THEN REPLY @148 GOTO 0 //保留当前设置（开启所有功能，仅我方队员有效）并返回上一层选项
		IF ~Global("SY#WPROP","GLOBAL",3)~ THEN REPLY @149 GOTO 0 //保留当前设置（仅有武器流派平衡，敌我均有效）并返回上一层选项
		IF ~Global("SY#WPROP","GLOBAL",4)~ THEN REPLY @150 GOTO 0 //保留当前设置（仅有武器流派平衡，仅我方队员有效）并返回上一层选项
		IF ~~ THEN REPLY @151 GOTO detaila1	//阅读武器流派平衡的详细说明
		IF ~~ THEN REPLY @152 GOTO detailb1	//阅读武器流派平衡的详细说明
		IF ~~ THEN REPLY @153 GOTO detailc1	//阅读武器流派可投入更多星数的详细说明
	END

	IF ~~ THEN BEGIN decreaseslots
		SAY @134	//设置是否通过扣星的方式达到更高的武器流派熟练等级
		IF ~~ THEN REPLY @135 DO ~SetGlobal("SY#WPDCRSLT","GLOBAL",1)~ GOTO wpstrebalance	//熟练度达到2星和3星时会自动减一星换来额外奖励
		IF ~~ THEN REPLY @136 DO ~SetGlobal("SY#WPDCRSLT","GLOBAL",0) SetGlobal("PROFBACK","LOCALS",1) SetGlobal("EXISTING","LOCALS",1)~ GOTO wpstrebalance	//关闭自动扣星并返还已经扣除的星数（如果有的话）
		IF ~~ THEN REPLY @137 DO ~SetGlobal("SY#WPDCRSLT","GLOBAL",0)~ GOTO wpstrebalance	//关闭自动扣星但不返还已经扣除的星数
		IF ~Global("SY#WPDCRSLT","GLOBAL",1)~ THEN REPLY @138 GOTO wpstrebalance	//保留当前设置（自动扣星换取额外奖励）并返回上一层选项
		IF ~!GlobalGT("SY#WPDCRSLT","GLOBAL",0)~ THEN REPLY @139 GOTO wpstrebalance	//保留当前设置（不自动扣星）并返回上一层选项
	END

	IF ~~ THEN BEGIN icon
		SAY @156	//设置武器流派平衡生效时是否显示图标进行提示
		IF ~~ THEN REPLY @157 DO ~SetGlobal("SY#WPICON","GLOBAL",1)~ GOTO wpstrebalance	//在人物头像上显示“英雄气概”图标进行提示
		IF ~~ THEN REPLY @158 DO ~SetGlobal("SY#WPICON","GLOBAL",0)~ GOTO wpstrebalance	//关闭图标显示
		IF ~GlobalGT("SY#WPICON","GLOBAL",0)~ THEN REPLY @159 GOTO wpstrebalance	//保留当前设置（显示图标）并返回上一层选项
		IF ~!GlobalGT("SY#WPICON","GLOBAL",0)~ THEN REPLY @160 GOTO wpstrebalance	//保留当前设置（不显示图标）并返回上一层选项
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
