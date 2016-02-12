///pp_add_particle()


sys.pt[sys.parts] = part_type_create()
sys.ptp[sys.parts,0] = 0 //셰이프/스프라이트
sys.ptp[sys.parts,1] = 1 //그래픽 인덱스
sys.ptp[sys.parts,2] = 0.1 //사이즈
sys.ptp[sys.parts,3] = 0.1
sys.ptp[sys.parts,4] = 0
sys.ptp[sys.parts,5] = 0
sys.ptp[sys.parts,6] = 1 //스케일
sys.ptp[sys.parts,7] = 1
sys.ptp[sys.parts,8] = 0 //컬러
sys.ptp[sys.parts,9] = 255
sys.ptp[sys.parts,10] = 0
sys.ptp[sys.parts,11] = 0
sys.ptp[sys.parts,12] = 0 //알파
sys.ptp[sys.parts,13] = 1
sys.ptp[sys.parts,14] = 0
sys.ptp[sys.parts,15] = 0
sys.ptp[sys.parts,16] = 1 //속도
sys.ptp[sys.parts,17] = 1
sys.ptp[sys.parts,18] = 0 
sys.ptp[sys.parts,19] = 0
sys.ptp[sys.parts,20] = 0 //방향
sys.ptp[sys.parts,21] = 359
sys.ptp[sys.parts,22] = 0
sys.ptp[sys.parts,23] = 0
sys.ptp[sys.parts,24] = 0 //중력
sys.ptp[sys.parts,25] = 270
sys.ptp[sys.parts,26] = 0 //각도
sys.ptp[sys.parts,27] = 0
sys.ptp[sys.parts,28] = 0
sys.ptp[sys.parts,29] = 0
sys.ptp[sys.parts,30] = 1
sys.ptp[sys.parts,31] = 0 //블렌드
sys.ptp[sys.parts,32] = 60 //생명
sys.ptp[sys.parts,33] = 60
sys.ptp[sys.parts,34] = 0 //스텝
sys.ptp[sys.parts,35] = 0
sys.ptp[sys.parts,36] = 0 //사망
sys.ptp[sys.parts,37] = 0

pp_set_particle(sys.parts)

sys.parts += 1

project_save_web()
