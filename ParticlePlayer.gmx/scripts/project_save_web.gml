///project_save_web()


if os_browser != browser_not_a_browser and sys.game_on = 1{
 var strt = project_save_json()
 

 var str='';
 str=js_get_url()
 if string_count('?data=',str)=1{
 str=string_copy(str,0,string_pos('?data=',str)-1)+'?data='
 }
 else{
 str=string_copy(str,0,string_length(str))+'?data='
 }
 str+=url_encode(strt)
 js_set_url(str)

 
 html_save('particleplayer2.dat',strt)
}



