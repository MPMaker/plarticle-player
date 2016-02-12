///pp_particle_randomize()
randomize()
var i=0;

repeat(sys.parts){
 if sys.ptp[i,0] mod 2 = 0{
 sys.ptp[i,1] = irandom(13)
 }
 sys.ptp[i,2] = irandom(100)/100
 sys.ptp[i,3] = irandom(100)/100
 sys.ptp[i,4] = irandom(100)/1000
 sys.ptp[i,5] = irandom(100)/1000
 sys.ptp[i,6] = irandom(90)/100+0.1
 sys.ptp[i,7] = irandom(90)/100+0.1
 sys.ptp[i,8] = irandom(2) //컬러
 sys.ptp[i,9] = irandom(c_white)
 sys.ptp[i,10] = irandom(c_white)
 sys.ptp[i,11] = irandom(c_white)
 sys.ptp[i,12] = irandom(2) //알파
 sys.ptp[i,13] = irandom(90)/100+0.1
 sys.ptp[i,14] = irandom(90)/100+0.1
 sys.ptp[i,15] = irandom(90)/100+0.1
 sys.ptp[i,16] = (irandom(200)+irandom(200))/100 //속도
 if irandom(1) = 0{
 sys.ptp[i,17] = (irandom(200)+irandom(200))/100
 }
 else{
 sys.ptp[i,17] =  sys.ptp[i,16]
 }
 if irandom(1) = 0{
 sys.ptp[i,18] = irandom(400)/1000
 }
 else{
 sys.ptp[i,18] = 0
 } 
 if irandom(1) = 0{
 sys.ptp[i,19] = irandom(1000)/100
 }
 else{
 sys.ptp[i,19] = 0
 }
 if irandom(1) = 0{
  sys.ptp[i,20] = 0 //방향
  sys.ptp[i,21] = 359
 }
 else{
 sys.ptp[i,20] = irandom(359) //방향
 sys.ptp[i,21] = irandom(359)
 }
 if irandom(1) = 0{
 sys.ptp[i,22] = irandom(2000)/100-10
 }
 else{
 sys.ptp[i,22] = 0
 }
 if irandom(1) = 0{
 sys.ptp[i,23] = irandom(1000)/100-10
 }
 else{
 sys.ptp[i,23] = 0
 }
 if irandom(2) = 0{
  sys.ptp[i,24] = irandom(1000)/1000 //중력
 }
 else{
  sys.ptp[i,24] = 0 //중력
 }
 sys.ptp[i,25] = irandom(359)
 sys.ptp[i,26] = irandom(359) //각도
 sys.ptp[i,27] = irandom(359)
 sys.ptp[i,28] = irandom(4000)/100-20
 sys.ptp[i,29] = irandom(4000)/100-20
 sys.ptp[i,30] = irandom(1)
 sys.ptp[i,31] = irandom(1) //블렌드
 sys.ptp[i,32] = irandom(145)+5 //생명
 if irandom(1) = 0{
 sys.ptp[i,33] = sys.ptp[i,32]+irandom(60)
 }
 else{
 sys.ptp[i,33] = sys.ptp[i,32]
 }
 pp_set_particle(i)
 i+=1
}
