
var Speed = 10;
var Space = 5;
var PageWidth = 988;
var fill = 0;
var MoveLock = false;
var MoveTimeObj;
var Comp = 0;
var AutoPlayObj = null;
GetObj("List_b").innerHTML = GetObj("List_a").innerHTML;
GetObj('ISL_Cont1').scrollLeft = fill;
GetObj("ISL_Cont1").onmouseover = function () { clearInterval(AutoPlayObj); }
GetObj("ISL_Cont1").onmouseout = function () { AutoPlay1(); }
AutoPlay1();
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
function AutoPlay1(){
 clearInterval(AutoPlayObj);
 AutoPlayObj = setInterval('ISL_GoDown1();ISL_StopDown1();',5000);
}
function ISL_GoUp1(){
 if(MoveLock) return;
 clearInterval(AutoPlayObj);
 MoveLock = true;
 MoveTimeObj = setInterval('ISL_ScrUp1();',Speed);
}
function ISL_StopUp1(){
 clearInterval(MoveTimeObj);
 if (GetObj('ISL_Cont1').scrollLeft % PageWidth - fill != 0) {
     Comp = fill - (GetObj('ISL_Cont1').scrollLeft % PageWidth);
  CompScr1();
 }else{
  MoveLock = false;
 }
 AutoPlay1();
}
function ISL_ScrUp1() {
    if (GetObj('ISL_Cont1').scrollLeft <= 0) { GetObj('ISL_Cont1').scrollLeft = GetObj('ISL_Cont1').scrollLeft + GetObj('List1').offsetWidth }
    GetObj('ISL_Cont1').scrollLeft -= Space;
}
function ISL_GoDown1(){
 clearInterval(MoveTimeObj);
 if(MoveLock) return;
 clearInterval(AutoPlayObj);
 MoveLock = true;
 ISL_ScrDown1();
 MoveTimeObj = setInterval('ISL_ScrDown1()',Speed);
}
function ISL_StopDown1(){
 clearInterval(MoveTimeObj);
 if (GetObj('ISL_Cont1').scrollLeft % PageWidth - fill != 0) {
     Comp = PageWidth - GetObj('ISL_Cont1').scrollLeft % PageWidth + fill;
  CompScr1();
 }else{
  MoveLock = false;
 }
 AutoPlay1();
}
function ISL_ScrDown1(){
    if (GetObj('ISL_Cont1').scrollLeft >= GetObj('List1').scrollWidth) { GetObj('ISL_Cont1').scrollLeft = GetObj('ISL_Cont1').scrollLeft - GetObj('List1').scrollWidth; }
    GetObj('ISL_Cont1').scrollLeft += Space;
}
function CompScr1(){
 var num;
 if(Comp == 0){MoveLock = false;return;}
 if(Comp < 0){
  if(Comp < -Space){
   Comp += Space;
   num = Space;
  }else{
   num = -Comp;
   Comp = 0;
  }

GetObj('ISL_Cont1').scrollLeft -= num;
  setTimeout('CompScr1()',Speed);
 }else{
  if(Comp > Space){
   Comp -= Space;
   num = Space;
  }else{
   num = Comp;
   Comp = 0;
  }

GetObj('ISL_Cont1').scrollLeft += num;
  setTimeout('CompScr1()',Speed);
 }
}

