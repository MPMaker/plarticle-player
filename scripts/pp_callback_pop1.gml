///pp_callback_pop1

var xx=__dx - __ax * __sx, yy=__dy - __ay * __sy, pp=__parent;
if val1 = 1{
 if pp.ptp[0] mod 2 =0{
 with(zui_main()){
  with (zui_create(xx,yy, objUIMenupop, -10)) {
   zui_set_anchor(0,0)
   zui_set_size(120,24)
   indexs=14
   val1=1
   target = pp
    captions[0]="pixel"
    captions[1]="disk"
    captions[2]="square"
    captions[3]="line"
    captions[4]="star"
    captions[5]="circle"
    captions[6]="ring"
    captions[7]="sphere"
    captions[8]="flare"
    captions[9]="spark"
    captions[10]="explosion"
    captions[11]="cloud"
    captions[12]="smoke"
    captions[13]="snow"
  }
 }
 }
 else{
  if sys.sprites>0{
  with(zui_main()){
   with (zui_create(xx,yy, objUIMenupop, -10)) {
    zui_set_anchor(0,0)
    zui_set_size(120,24)
    indexs=sys.sprites
    val1=1
    target = pp
    var i = 0;
    repeat(indexs){
     captions[i]="sprite"+string(i)
     i+=1
    }
   }
   }
  }
 }
}
if val1 = 8{
 with(zui_main()){
  with (zui_create(xx,yy, objUIMenupop, -10)) {
   zui_set_anchor(0,0)
   zui_set_size(120,24)
   indexs=3
   val1=8
   target = pp
    captions[0]="color1"
    captions[1]="color2"
    captions[2]="color3"
  }
 }
}

if val1 = 12{
 with(zui_main()){
  with (zui_create(xx,yy, objUIMenupop, -10)) {
   zui_set_anchor(0,0)
   zui_set_size(120,24)
   indexs=3
   val1=12
   target = pp
    captions[0]="alpha1"
    captions[1]="alpha2"
    captions[2]="alpha3"
  }
 }
}


if val1 = 0{
 with(zui_main()){
  with (zui_create(xx,yy, objUIMenupop, -10)) {
    zui_set_anchor(0,0)
    zui_set_size(120,24)
    indexs=sys.parts
    val1=0
    target = pp
    var i = 0;
    repeat(indexs){
     captions[i]="particle"+string(i)
     i+=1
    }
   }
 }
}




if val1 = 5{
 with(zui_main()){
  with (zui_create(xx,yy, objUIMenupop, -10)) {
   zui_set_anchor(0,0)
   zui_set_size(120,24)
   indexs=4
   val1=5
   target = pp
    captions[0]="rectangle"
    captions[1]="ellipse"
    captions[2]="diamond"
    captions[3]="line"
  }
 }
}

if val1 = 6{
 with(zui_main()){
  with (zui_create(xx,yy, objUIMenupop, -10)) {
   zui_set_anchor(0,0)
   zui_set_size(120,24)
   indexs=3
   val1=6
   target = pp
    captions[0]="linear"
    captions[1]="gaussian"
    captions[2]="invgaussian"
  }
 }
}


if val1 = 34{
 with(zui_main()){
  with (zui_create(xx,yy, objUIMenupop, -10)) {
    zui_set_anchor(0,0)
    zui_set_size(120,24)
    indexs=sys.parts -1
    val1=34
    target = pp
    notme =pp.__index
    var i = 0;
    repeat(indexs+1){
     captions[i]="particle"+string(i)
     i+=1
    }
   }
 }
}

if val1 = 36{
 with(zui_main()){
  with (zui_create(xx,yy, objUIMenupop, -10)) {
    zui_set_anchor(0,0)
    zui_set_size(120,24)
    indexs=sys.parts -1
    val1=36
    target = pp
    notme =pp.__index
    var i = 0;
    repeat(indexs+1){
     captions[i]="particle"+string(i)
     i+=1
    }
   }
 }
}
