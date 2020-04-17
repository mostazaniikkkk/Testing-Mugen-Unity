;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;-| Motions |------------------------------------------------------

[Command]
name = "QCF_x"
command = ~D, DF, F, x
[Command]
name = "QCF_y"
command = ~D, DF, F, y
[Command]
name = "QCF_z"
command = ~D, DF, F, z
[Command]
name = "QCF_z"
command = ~D, DF, F, /z

[Command]
name = "QCB_x"
command = ~D, DB, B, x
[Command]
name = "QCB_y"
command = ~D, DB, B, y
[Command]
name = "QCB_z"
command = ~D, DB, B, z
[Command]
name = "QCB_z"
command = ~D, DB, B, /z

[Command]
name = "DP_x"
command = ~F, D, DF, x
[Command]
name = "DP_y"
command = ~F, D, DF, y
[Command]
name = "DP_z"
command = ~F, D, DF, z
[Command]
name = "DP_z"
command = ~F, D, DF, /z

[Command]
name = "DD_x"
command = ~D, D, x
[Command]
name = "DD_y"
command = ~D, D, y
[Command]
name = "DD_z"
command = ~D, D, z
[Command]
name = "DD_z"
command = ~D, D, /z

[Command]
name = "HCF_z"
command = ~B,DB,D,DF,F,z
[Command]
name = "HCF_z"
command = ~B,DF,z
[Command]
name = "HCF_a"
command = ~B,DB,D,DF,F,a
[Command]
name = "HCF_a"
command = ~B,DF,a

[Command]
name = "throw"
command = a+x
[Command]
name = "quick"
command = x+y
[Command]
name = "x+y+z"
command = x+y+z
time = 20


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 15

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /$F,x
time = 1
[Command]
name = "recovery";Required (do not remove)
command = /$B,x
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /$F,y
time = 1
[Command]
name = "recovery";Required (do not remove)
command = /$B,y
time = 1

[Command]
name = "recovery";Required (do not remove)
command = /$F,z
time = 1
[Command]
name = "recovery";Required (do not remove)
command = /$B,z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "force"
command =y + z
time = 1

[Command]
name = "a"
command = a
time = 1

[Command]
name = "chainshift"
command = a,a
time = 10

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Single Dir |----------------------------------------------------------------

[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdupfwd"
command = /$UF
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownfwd";Required (do not remove)
command = /$DF
time = 1

[Command]
name = "holddownback";Required (do not remove)
command = /$DB
time = 1

;===========================================================================

[Statedef -1]

;Raging Roar
[State -1, Raging Roar
type = ChangeState
value = 1700
triggerall = command = "x+y+z"
triggerall = numhelper(6005) != 0
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Gyre Vortex
[State -1, Gyre Vortex]
type = ChangeState
value = 1600
triggerall = command = "HCF_a"
triggerall = fvar(35) >= 1000
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Pale Bringer
[State -1, Pale Bringer]
type = ChangeState
value = 1500
triggerall = command = "HCF_z"
triggerall = fvar(35) >= 500
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Dark Lotus EX
[State -1, Dark Lotus EX]
type = ChangeState
value = 1402
triggerall = command = "QCF_z"
triggerall = stateno != [1400,1409]
triggerall = fvar(35) >= 500
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype = A

;---------------------------------------------------------------------------
;Dark Lotus B
[State -1, Dark Lotus B]
type = ChangeState
value = 1401
triggerall = command = "QCF_y" || (command = "QCF_z" && fvar(35) < 500)
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype = A

;---------------------------------------------------------------------------
;Dark Lotus A
[State -1, Dark Lotus A]
type = ChangeState
value = 1400
triggerall = command = "QCF_x"
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype = A

;---------------------------------------------------------------------------
;Vacant Shift EX
[State -1, Vacant Shift EX]
type = ChangeState
value = 1202
triggerall = command = "QCB_z"
triggerall = fvar(35) >= 500
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Vacant Shift B
[State -1, Vacant Shift B]
type = ChangeState
value = 1201
triggerall = command = "QCB_y" || (command = "QCB_z" && fvar(35) < 500)
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Vacant Shift A
[State -1, Vacant Shift A]
type = ChangeState
value = 1200
triggerall = command = "QCB_x"
triggerall = command != "throw" 
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Red Clad Craver EX
[State -1, Red Clad Craver EX]
type = ChangeState
value = 1102
triggerall = command = "DP_z"
triggerall = fvar(35) >= 500
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Red Clad Craver B
[State -1, Red Clad Craver B]
type = ChangeState
value = 1101
triggerall = command = "DP_y" || (command = "DP_z" && fvar(35) < 500)
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Red Clad Craver A
[State -1, Red Clad Craver A]
type = ChangeState
value = 1100
triggerall = command = "DP_x"
triggerall = command != "throw" 
triggerall = Roundstate = 2
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]


;---------------------------------------------------------------------------
;Black Lotus
[State -1, Black Lotus]
type = null;ChangeState
value = 1003
triggerall = command = "QCF_x"
triggerall = Roundstate = 2
trigger1 = ((stateno = [1000,1001]) && animelemtime(5) > 0)
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Black Orbiter EX
[State -1, Black Orbiter EX]
type = ChangeState
value = 1002
triggerall = command = "QCF_z"
triggerall = command != "HCF_z"
triggerall = fvar(35) >= 500
triggerall = Roundstate = 2
triggerall  = ctrl  = 1 && statetype != A
trigger1 = numhelper(1000)=0
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Black Orbiter B
[State -1, Black Orbiter B]
type = ChangeState
value = 1001
triggerall = command = "QCF_y" || (command = "QCF_z" && fvar(35) < 500)
triggerall = Roundstate = 2
triggerall  = ctrl  = 1 && statetype != A
trigger1 = numhelper(1000)=0
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Black Orbiter A
[State -1, Black Orbiter A]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = command != "throw" 
triggerall = Roundstate = 2
triggerall  = ctrl  = 1 && statetype != A
trigger1 = numhelper(1000)=0
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Shadow Scare EX
[State -1, Shadow Scare EX]
type = ChangeState
value = 1302
triggerall = command = "DD_z"
triggerall = fvar(35) >= 500
triggerall = Roundstate = 2
trigger1 = numhelper(1300)=0
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Shadow Scare B
[State -1, Shadow Scare B]
type = ChangeState
value = 1301
triggerall = command = "DD_y" || (command = "DD_z" && fvar(35) < 500)
triggerall = Roundstate = 2
trigger1 = numhelper(1300)=0
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Shadow Scare A
[State -1, Shadow Scare A]
type = ChangeState
value = 1300
triggerall = command = "DD_x"
triggerall = command != "throw" 
triggerall = Roundstate = 2
trigger1 = numhelper(1300)=0
trigger1  = ctrl  = 1 && statetype != A
trigger2 = stateno = [100,101]

;===========================================================================
;---------------------------------------------------------------------------
;Evasive Air Dash (ground)
[State -1, Evasive Air Dash (ground)]
type = ChangeState
value = 60
triggerall = command != "HCF_a"
triggerall = command = "a" && command = "holdfwd"
triggerall = command != "throw" 
;triggerall = fvar(35) >= 200
triggerall = stateno != [60,69]
trigger1 = statetype !=A && ctrl
trigger2 = stateno = [100,101]
;---------------------------------------------------------------------------
;Evasive Air Dash (air)
[State -1, Evasive Air Dash (air)]
type = ChangeState
value = 61
triggerall = var(0) = 0
;triggerall = fvar(35) >= 200
triggerall = statetype = A
triggerall = stateno != [60,69]
triggerall = command != "throw" 
triggerall = ctrl
trigger1 = command = "a" && command = "holdfwd"
trigger2 = command = "FF"

;---------------------------------------------------------------------------
;Gauge Charge Air
[State -1, Gauge Charge Air]
type = null;ChangeState
value = 3002
triggerall = command = "holda" && command != "holdfwd"
triggerall = stateno != [60,69]
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Chain Shift
[State -1, Chain Shift]
type = ChangeState
value = 3000
triggerall = command = "chainshift" && command != "holdfwd"
triggerall = var(9) = 0
trigger1= fvar(0) >= 50 && ctrl

;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF" && statetype !=A && ctrl
trigger2 = command = "quick" && command = "holdfwd" && statetype !=A && ctrl

;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB" && statetype !=A && ctrl
trigger2 = command = "quick" && command = "holdback" && statetype !=A && ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Force Function
[State -1, Force Function]
type = ChangeState
value = 900
triggerall = Roundstate = 2
triggerall = command != "x+y+z"
triggerall = command = "y" && command = "z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 700
triggerall = Roundstate = 2
triggerall = command = "a" && command = "x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;66C
[State -1, 66C]
type = ChangeState
value = 860
triggerall = command != "holddown"
triggerall = Roundstate = 2
triggerall = command = "z" && command = "holdfwd"
trigger1 = statetype != A && stateno = 100

;---------------------------------------------------------------------------
;66B
[State -1, 66B]
type = ChangeState
value = 850
triggerall = command != "holddown"
triggerall = Roundstate = 2
triggerall = command = "y" && command = "holdfwd"
trigger1 = statetype != A && stateno = 100

;---------------------------------------------------------------------------
;j.6C
[State -1, j.6C]
type = ChangeState
value = 830
triggerall = Roundstate = 2
triggerall = command = "z" && command = "holdfwd"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;3C
[State -1, 3C]
type = ChangeState
value = 820
triggerall = command = "holddown"
triggerall = Roundstate = 2
triggerall = command = "z" && command = "holdfwd"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;3B
[State -1, 3B]
type = ChangeState
value = 810
triggerall = command = "holddown"
triggerall = Roundstate = 2
triggerall = command = "y" && command = "holdfwd"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;6B
[State -1, 6B]
type = ChangeState
value = 800
triggerall = command != "holddown"
triggerall = Roundstate = 2
triggerall = command = "y" && command = "holdfwd"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]


;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Stand A
[State -1, Stand A]
type = ChangeState
value = 200
triggerall = command != "holddown"
triggerall = command != "throw" 
triggerall = command != "x+y+z"
triggerall = Roundstate = 2
triggerall = command = "x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Stand B
[State -1, Stand B]
type = ChangeState
value = 210
triggerall = command != "holddown"
triggerall = command != "force"
triggerall = command != "x+y+z"
triggerall = Roundstate = 2
triggerall = command = "y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Stand C
[State -1, Stand C]
type = ChangeState
value = 220
triggerall = command != "holddown"
triggerall = command != "force"
triggerall = command != "x+y+z"
triggerall = Roundstate = 2
triggerall = command = "z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Crouch A
[State -1, Crouch A]
type = ChangeState
value = 400
triggerall = command = "holddown"
triggerall = command != "throw" 
triggerall = command != "x+y+z"
triggerall = Roundstate = 2
triggerall = command = "x"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Crouch B
[State -1, Crouch B]
type = ChangeState
value = 410
triggerall = command = "holddown"
triggerall = command != "force"
triggerall = command != "x+y+z"
triggerall = Roundstate = 2
triggerall = command = "y"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Crouch C
[State -1, Crouch C]
type = ChangeState
value = 420
triggerall = command = "holddown"
triggerall = command != "force"
triggerall = command != "x+y+z"
triggerall = Roundstate = 2
triggerall = command = "z"
trigger1 = statetype != A && ctrl
trigger2 = stateno = [100,101]

;---------------------------------------------------------------------------
;Jump A
[State -1, Jump A]
type = ChangeState
value = 600
triggerall = Roundstate = 2
triggerall = command = "x"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Jump B
[State -1, Jump B]
type = ChangeState
value = 610
triggerall = Roundstate = 2
triggerall = command = "y"
trigger1 = statetype = A && ctrl

;---------------------------------------------------------------------------
;Jump C
[State -1, Jump C]
type = ChangeState
value = 620
triggerall = Roundstate = 2
triggerall = command = "z"
trigger1 = statetype = A && ctrl


;---------------------------------------------------------------------------
; AI

[State -2, P2 Safe Fall]
type = changestate
triggerall = ailevel != 0
triggerall = roundstate = 2
triggerall = alive && hitfall && gethitvar(fall.recover) && canrecover
trigger1 = stateno=5030 || stateno=5035 || stateno=5050 || stateno=5071
value = 5205
ignorehitpause = 1
[State -2, P2 Safe Fall]
type =changestate
;triggerall = stateno != [5200,5299]
triggerall = ailevel != 0
triggerall = roundstate = 2
triggerall = alive && hitfall && gethitvar(fall.recover)
trigger1 = pos y >=0 && vel y>0
trigger1 = stateno = 5100
value = 5205
ignorehitpause = 1



[State -3]
Type = ChangeState
value = 131
Triggerall = ailevel != 0
triggerall = !ishelper
TriggerAll = RoundState = 2
TriggerAll = StateType != A
triggerall = random<500
triggerAll = ctrl||stateno=52||(stateno=[100,101])||(stateno=[200,699])&&(prevstateno!=[200,4000])&&time<=1
Trigger1 = inguarddist
Trigger2 = Enemy,NumHelper > 0 || Enemy,NumProj > 0||EnemyNear,MoveType = A
trigger2 = inguarddist
Trigger3 = EnemyNear,HitDefAttr = C,AA || EnemyNear,HitDefAttr = SCA,AP 
Trigger3 = P2BodyDist X < 340

[State -3]
type  = ChangeState
value = 132
triggerall = p2movetype = A||inguarddist
triggerall = statetype = A
Triggerall = ailevel != 0
triggerall = !ishelper
triggerall = random<160||p2movetype = A&&inguarddist
TriggerAll = RoundState = 2
triggerAll = ctrl||stateno=52||(stateno=[100,101])||(stateno=[200,699])&&(prevstateno!=[200,4000])&&time<=1
triggerall = random<600
triggerall = p2statetype = A||random<200
triggerall = !(enemynear,hitdefattr = A, NT,ST,HT)
trigger1 = P2BodyDist X = [80,240]
trigger1 = random<600
trigger2 = P2BodyDist X = [-30,120]
trigger2 = random<800

[State -3]
type  = ChangeState
value = 130
triggerall = p2movetype = A||inguarddist
triggerall = statetype != A
triggerall = random<900
triggerall = random<160||p2movetype = A&&inguarddist
Triggerall = ailevel != 0
triggerall = !ishelper
TriggerAll = RoundState = 2
triggerAll = ctrl||stateno=52||(stateno=[100,101])||(stateno=[200,699])&&(prevstateno!=[200,4000])&&time<=1
triggerall = p2statetype != C||random<50
trigger1   = P2BodyDist X = [120,270]
trigger1   = random<400
trigger2   = P2BodyDist X = [-45,129]
trigger2   = random<600
trigger4   = P2BodyDist X = [-45,129]
trigger4   = enemy,hitdefattr = S, NA,SA,HA
trigger4   = Random < 300

[State -3]
type  = ChangeState
value = 130
triggerall = p2movetype = A||inguarddist
triggerall = statetype != A
Triggerall = ailevel != 0
triggerall = !ishelper
triggerall = random<160||p2movetype = A&&inguarddist
triggerall = random<900
TriggerAll = RoundState = 2
triggerAll = ctrl||stateno=52||(stateno=[100,101])||(stateno=[200,699])&&(prevstateno!=[200,4000])&&time<=1
triggerall = p2statetype = A||random<40
trigger1   = P2BodyDist X = [120,270]
trigger1   = random<550
trigger2   = P2BodyDist X = [-100,129]
trigger2   = random<700

[State -3]
type  = ChangeState
value = 131
triggerall = p2movetype = A||inguarddist
triggerall = statetype != A
Triggerall = ailevel != 0
triggerall = random<160||p2movetype = A&&inguarddist
triggerall = !ishelper
triggerall = random<900
TriggerAll = RoundState = 2
triggerAll = ctrl||stateno=52||(stateno=[100,101])||(stateno=[200,699])&&(prevstateno!=[200,4000])&&time<=1
trigger1   = p2statetype = C
trigger1   = P2BodyDist X = [120,255]
trigger1   = random<400
trigger2   = p2statetype = C
trigger2   = P2BodyDist X = [-50,169]
trigger2   = random<600
trigger3   = p2statetype = S
trigger3   = P2BodyDist X = [-45,150]
trigger3   = random<300
trigger5   = P2BodyDist X = [-50,150]
trigger5   = enemy,hitdefattr = C, NA,SA,HA
trigger5   = Random < 300














[State -1]
Type = ChangeState
Value = 100
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = random = [0,349]
trigger1 = P2BodyDist X >= 80
trigger1 = ctrl

[State -1]
Type = ChangeState
Value = 60
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = stateno != [60,62]
triggerall = prevstateno != [60,62]
triggerall = random = [0,349] 
trigger1 = P2BodyDist X >= 80 && ctrl
[State -1]
Type = ChangeState
Value = 61
triggerall = var(0) = 0
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType = A
triggerall = stateno != [60,62]
triggerall = prevstateno != [60,62]
triggerall = random = [0,349]
trigger1 = P2BodyDist X >= 80 && ctrl

[State -1,Throw]
type = ChangeState
value = 700
TriggerAll = ailevel != 0
triggerall = p2statetype!=A
TriggerAll = RoundState = 2
triggerall = p2stateno!=5120
triggerall = p2statetype!=L
Triggerall = p2bodydist x < 20
triggerall = !inguarddist||random<10
triggerall = statetype != A
triggerall = random<200
trigger1 = ctrl||stateno=52||(stateno=[100,101])||(stateno=[200,699])&&(prevstateno!=[200,4000])&&time<=1
trigger2 = stateno=200&&moveguarded
trigger3 = stateno=400&&moveguarded
trigger4 = stateno=210&&moveguarded
trigger5 = stateno=410&&moveguarded


[State -1]
Type = ChangeState
Value = 1500
triggerall = fvar(35) >= 500
triggerall = roundstate = 2
triggerall = enemynear,stateno != [5200,5209]
triggerall = ailevel != 0
triggerall = StateType != A
trigger1 = ctrl && p2movetype = A
trigger1 = P2Bodydist X <= 140
trigger2 = stateno = 220 && movecontact && numtarget(220) != 0
trigger3 = stateno = 1004 && movecontact && numtarget(2211) != 0

[State -1]
Type = ChangeState
Value = 400
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = enemynear,statetype != A
trigger1 = P2Bodydist X < 20
trigger1 = ctrl
[State -1]
Type = ChangeState
Value = 410
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = enemynear,statetype != A
trigger1 = P2Bodydist X <= 30
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact && numtarget(220) != 0
trigger2 = helper(6000),var(3) = 0
trigger3 = stateno = 400 && movecontact && numtarget(400) != 0
[State -1]
Type = ChangeState
Value = 420
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = enemynear,statetype != A
trigger1 = P2Bodydist X = [0,40]
trigger1 = ctrl
trigger2 = stateno = 410 && movecontact && numtarget(410) != 0
[State -1]
Type = ChangeState
Value = 600
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = statetype = A
trigger1 = P2Bodydist X <= 35
trigger1 = (stateno = [60,61]) && ctrl = 1
trigger2 = stateno = 610 && movecontact && numtarget(610) != 0
[State -1]
Type = ChangeState
Value = 620
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = statetype = A
trigger1 = P2Bodydist X <= 35
trigger1 = ctrl
trigger2 = stateno = 610 && movecontact && numtarget(610) != 0
[State -1]
Type = ChangeState
Value = 900
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
trigger1 = P2Bodydist X = [100,150]
trigger1 = ctrl  && random = [0,349]
trigger2 = stateno = 420 && movecontact && numtarget(420) != 0
[State -1]
Type = ChangeState
Value = 210
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = enemynear,statetype != A
trigger1 = P2Bodydist X <= 35
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact && numtarget(220) != 0
trigger2 = helper(6000),var(3) = 0
trigger3 = enemynear,gethitvar(chainid)=[700,709]
trigger3 = ctrl && P2Bodydist X <= 35

[State -1]
Type = ChangeState
Value = 810
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = enemynear,statetype != A
triggerall = P2Bodydist X = [100,130]
trigger1 = ctrl
trigger2 = stateno = 220 && movecontact && numtarget(220) != 0
trigger3 = stateno = 400 && movecontact && numtarget(400) != 0
trigger4 = stateno = 410 && movecontact && numtarget(410) != 0


[State -1]
Type = ChangeState
Value = 220
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = enemynear,statetype != A
trigger1 = P2Bodydist X = [35,75]
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact && numtarget(210) != 0
trigger3 = stateno = 200 && movecontact && numtarget(200) != 0 && random = [0,249]

[State -1]
Type = ChangeState
Value = 820
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
trigger1 = P2Bodydist X = [10,30]
trigger1 = ctrl && p2statetype = A
trigger2 = stateno = 220 && movecontact && numtarget(220) != 0
trigger2 = helper(6000),var(3) != 0

[State -1]
Type = ChangeState
Value = 830
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType = A
trigger1 = ctrl && p2statetype = A
trigger1 = P2Bodydist X <= 80
trigger2 = stateno = 620 && movecontact && numtarget(620) != 0

[State -1]
Type = ChangeState
Value = 1002
triggerall = fvar(35) >= 500
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = numhelper(1000)=0
trigger1 = P2Bodydist X >= 170
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && numtarget(200) != 0 && random = [0,449]
trigger3 = stateno = 900 && movecontact && numtarget(900) != 0 && random = [0,449]
[State -1]
Type = ChangeState
Value = 1001
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = numhelper(1000)=0
trigger1 = P2Bodydist X >= 170
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact && numtarget(200) != 0 && random = [0,449]
[State -1]
Type = ChangeState
Value = 1004
triggerall = fvar(35) >= 500 && p2bodydist x < 150
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = stateno = 1000 || stateno = 1001
triggerall = animelemtime(5) > 0
trigger1 = var(20) >= 180
trigger2 = enemynear,gethitvar(chainid) = 1000
[State -1]
Type = ChangeState
Value = 1003
triggerall = fvar(35) < 500 || p2bodydist x >= 150
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = stateno = 1000 || stateno = 1001
triggerall = animelemtime(5) > 0
trigger1 = var(20) >= 180
trigger2 = enemynear,gethitvar(chainid) = 1000

[State -1]
Type = ChangeState
Value = 1202
triggerall = fvar(35) >= 500
triggerall = roundstate = 2
triggerall = enemynear,stateno != [5200,5209]
triggerall = ailevel != 0
triggerall = StateType != A
trigger1 = ctrl && random = [0,549]
trigger1 = P2Bodydist X <= 80 && p2statetype = A && enemynear, pos y <= -50
trigger2 = enemynear,gethitvar(chainid) = 820 && stateno != [1200,1299]
trigger3 = stateno = 400 && movecontact && numtarget(400) != 0
[State -1]
Type = ChangeState
Value = 1201
triggerall = roundstate = 2
triggerall = enemynear,stateno != [5200,5209]
triggerall = ailevel != 0
triggerall = StateType != A
trigger1 = stateno = 810 && movecontact && numtarget(810) != 0
[State -1]
Type = ChangeState
Value = 1200
triggerall = roundstate = 2
triggerall = enemynear,stateno != [5200,5209]
triggerall = ailevel != 0
triggerall = StateType != A
trigger1 = ctrl && random = [0,249]
trigger1 = P2Bodydist X <= 80 && p2statetype = A && enemynear, pos y <= -50
trigger2 = enemynear,gethitvar(chainid) = 820 && stateno != [1200,1299]

[State -1]
Type = ChangeState
Value = 1300
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
trigger1 = ctrl && P2Bodydist X = [110,160]
[State -1]
Type = ChangeState
Value = 1302
triggerall = fvar(35) >= 500
triggerall = roundstate = 2
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = numhelper(1300)=0
trigger1 = ctrl && P2Bodydist X >= 200

[State -1]
Type = ChangeState
Value = 1600
triggerall = fvar(35) >= 1000
triggerall = roundstate = 2
triggerall = enemynear,stateno != [5200,5209]
triggerall = ailevel != 0
triggerall = StateType != A
trigger1 = ctrl && (var(12) = [899,900]) && fvar(0) <= 150
trigger1 = P2Bodydist X <= 100
trigger2 = ctrl && P2Bodydist X <= 80 && p2statetype = A

[State -1]
Type = ChangeState
Value = 1700
triggerall = var(19) = 0 && numhelper(6005) != 0
triggerall = roundstate = 2
triggerall = enemynear,stateno != [5200,5209]
triggerall = ailevel != 0
triggerall = StateType != A
triggerall = ctrl = 1
trigger1 = P2Bodydist X <= 80
trigger2 = p2movetype = A && P2Bodydist X <= 80

[State -1]
Type = ChangeState
Value = 1102
triggerall = fvar(35) >= 500
triggerall = roundstate = 2
triggerall = enemynear,stateno != [5200,5209]
triggerall = ailevel != 0
triggerall = StateType != A
trigger1 = ctrl
trigger1 = P2Bodydist X <= 70 && p2statetype = A && enemynear, pos y <= -50 && enemynear,gethitvar(chainid) != 900
[State -1]
Type = ChangeState
Value = 1100+random%2
triggerall = roundstate = 2
triggerall = enemynear,stateno != [5200,5209]
triggerall = ailevel != 0
triggerall = StateType != A
trigger1 = ctrl
trigger1 = P2Bodydist X <= 100 && p2statetype = A && enemynear, pos y <= -50


[State -1]
Type = ChangeState
Value = 1402
triggerall = roundstate = 2
triggerall = fvar(35) >= 500
triggerall = enemynear,stateno != [5200,5209]
triggerall = stateno != [1400,1499]
triggerall = ailevel != 0
triggerall = StateType = A
triggerall = pos y <= -50
trigger1 = ctrl && P2Bodydist X = [-80,80]
[State -1]
Type = ChangeState
Value = 1400+random%2
triggerall = roundstate = 2
triggerall = enemynear,stateno != [5200,5209]
triggerall = ailevel != 0
triggerall = StateType = A
triggerall = pos y <= -50
trigger1 = ctrl &&  P2Bodydist X = [-80,80]



