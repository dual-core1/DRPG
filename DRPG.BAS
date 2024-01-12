'dungeon rpg
'I challenged myself to write spaghetti code
'also the game's design was not important as it was just for testing

'variables
dim uin as integer
dim weapon as integer '0: nothing 1-5: blunt weapon 6-10: sharp weapon
dim weapname as string
dim gamloc as integer '1: cell 2: hall 3: storage room 4: outside 5: escaped
dim locname as string
dim playerhp as integer
dim enemyhp as integer
dim hit as integer
dim enemychoice as integer
dim newweap as integer
'THE MAIN EVENT!!
start:
cls
print "dungeon rpg (spaghetti edition)"
print "--------------------------------"
print "[1] begin"
print "[2] exit"
start_get_input:
input "> ",uin
if uin<>1 and uin<>2 goto start_get_input
if uin=2 then end
if uin=1 then goto begin
begin:
weapon=1
weapname="a stick"
gamloc=1
locname="cell"
update_names:
if weapon=0 then weapname="nothing"
if weapon=1 then weapname="a stick"
if weapon=2 then weapname="a stone"
if weapon=3 then weapname="a club"
if weapon=4 then weapname="a rod"
if weapon=5 then weapname="a hammer"
if weapon=6 then weapname="a fork"
if weapon=7 then weapname="a nail"
if weapon=8 then weapname="a glass shiv"
if weapon=9 then weapname="a metal shiv"
if weapon=10 then weapname="a knife"
if gamloc=1 then
 locname="cell"
 goto loc_cell
end if
if gamloc=2 then
 locname="hall"
 goto loc_hall
end if
if gamloc=3 then
 locname="storage room"
 goto loc_storage_room
end if
if gamloc=4 then
 locname="outside"
 goto loc_outside
end if
if gamloc=5 then
 locname="escaped"
 goto loc_escaped
end if
loc_cell:
print "You are in your cell. Another prisoner comes in and accuses you of stealing something."
print "[1] Tell him you didn't steal it."
print "[2] Tell him to go fuck himself."
loc_cell_get_input:
input "How do you respond?> ",uin
if uin<>1 and uin<>2 then goto loc_cell_get_input
if uin=1 then print "The hell you didn't, he shouts, then squares up for a fight."
if uin=2 then print "He shoves you. Time to remind him whose cell he's in."
goto fight
loc_hall:
print "You enter the hall after wiping the floor with that prisoner. A different prisoner is"
print "looking for his friend and can't find him. He sees the blood on you."
print "'What did you do?!' he demands."
print "[1] Tell him you did nothing."
print "[2] Tell him his friend started what he couldn't finish."
loc_hall_get_input:
input "How do you respond?> ",uin
if uin<>1 and uin<>2 then goto loc_hall_get_input
if uin=1 then print "He tells you the blood on you says something different, and rushes you."
if uin=2 then print "He tells you he'll finish what his friend started, then."
goto fight
loc_storage_room:
print "After handing out another beatdown, you know you've caught attention so you run to the"
print "nearest storage room to hide. Unfortunately, there's a guard in there."
print "'What are you doing in here?' he yells."
print "[1] 'I got lost...'"
print "[2] 'Your mother.'"
loc_storage_room_get_input:
input "How do you respond?> ",uin
if uin<>1 and uin<>2 then goto loc_storage_room_get_input
if uin=1 then print "He tells he'll teach you not to leave your cells, then adopts a combat stance."
if uin=2 then print "He tells you he's about to hurt you good."
goto fight
loc_outside:
print "You know you're in for it after attacking a guard, so you grab his key, unlock a door, and exit."
print "But another guard was waiting for you, and he doesn't even waste time talking."
goto fight
loc_escaped:
print "After fighting the guard who ambushed you outside, you decide not to stick around for"
print "much longer. You put on the guard's uniform and leave through the gates... hopefully"
print "never to be back again."
goto gamewin
fight:
playerhp=10*gamloc
enemyhp=10*gamloc
fight_turn_start:
if gamloc=1 then print "You are fighting a prisoner in your cell."
if gamloc=2 then print "You are fighting a prisoner in the hall."
if gamloc=3 then print "You are fighting a guard in the storage room."
if gamloc=4 then print "You are fighting a guard outside."
print "You have ";playerhp;" HP left."
print "Your enemy has ";enemyhp;" HP left."
print "You're equipped with ";weapname;"."
print "[1] Light attack (low dmg, low miss chance)"
print "[2] Heavy attack (high dmg, high miss chance)"
print "[3] Block (no damage from enemy's light attack, lower damage from enemy's heavy attack)"
'player's turn
fight_input:
input "Your action> ",uin
if uin<>1 and uin<>2 and uin<>3 then goto fight_input
if uin=1 then
 print "You executed a light attack..."
 randomize
 hit=int(rnd*10)+1
 if hit<9 then
  enemyhp=enemyhp-weapon
  print "You dealt ";weapon;" damage!"
 else
  print "You missed."
 end if
end if
if uin=2 then
 print "You executed a heavy attack..."
 randomize
 hit=int(rnd*10)+1
 if hit<3 then
  enemyhp=enemyhp-weapon*2
  print "You dealt ",weapon*2," damage!"
 else
  print "You missed."
 end if
end if
if uin=3 then print "You're blocking..."
'enemy's turn
randomize
enemychoice=int(rnd*2)+1
if enemychoice=1 then
 print "The enemy executed a light attack..."
 randomize
 hit=int(rnd*10)+1
 if hit<9 then
  if uin=3 then
   print "You blocked his attack."
  else
   playerhp=playerhp-weapon
   print "You took ";weapon;" damage!"
  end if
 else
  print "He missed."
 end if
end if
if enemychoice=2 then
 print "The enemy executed a heavy attack..."
 randomize
 hit=int(rnd*10)+1
 if hit<3 then
  if uin=3 then
   print "Due to blocking you only took ";weapon;" damage."
   playerhp=playerhp-weapon
  else
   print "You took ",weapon*2," damage!"
   playerhp=playerhp-weapon*2
  end if
 else
  print "He missed."
 end if
end if
'check results
if playerhp<1 then goto gameover
if enemyhp<1 then goto fightwin
goto fight_turn_start
fightwin:
print "You won the fight."
randomize
newweap=int(rnd*10)+1
if newweap=1 then print "You found a stick."
if newweap=2 then print "You found a stone."
if newweap=3 then print "You found a club."
if newweap=4 then print "You found a rod."
if newweap=5 then print "You found a hammer."
if newweap=6 then print "You found a fork."
if newweap=7 then print "You found a nail."
if newweap=8 then print "You found a glass shiv."
if newweap=9 then print "You found a metal shiv."
if newweap=10 then print "You found a knife."
print "This new weapon deals ";newweap;" damage per light attack."
print "Your current weapon deals ";weapon;" damage per light attack."
print "[1] Switch to this weapon"
print "[2] Keep current weapon"
fightwin_input:
input "> ",uin
if uin<>1 and uin<>2 then goto fightwin_input
if uin=1 then weapon=newweap
gamloc=gamloc+1
goto update_names
gameover:
print "You have died."
print "[1] Restart"
print "[2] Quit"
gameover_input:
input "> ",uin
if uin<>1 and uin<>2 then goto gameover_input
if uin=1 then goto start
if uin=2 then end
gamewin:
print "You won!"
print "[1] Play again"
print "[2] Quit"
gamewin_input:
input "> ",uin
if uin<>1 and uin<>2 then goto gamewin_input
if uin=1 then goto start
if uin=2 then end