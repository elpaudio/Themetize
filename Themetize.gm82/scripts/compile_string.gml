///(string)
var a;a=argument0
a=string_replace_all(a,' ','')

if string_count('[]={',a)>0 {
varname=string_copy(a,0,string_pos('[',a)-1)
aa=string_copy(a,string_pos('{',a)+1,128)
string_token_start(aa,',')
i=0
repeat(string_count(',',aa)+1) {
execute_string(varname+'['+string(i)+']='+string_replace_all(string_replace_all(string_token_next(),'#',''),'}',''))
i+=1
}
execute_string(varname+'_size='+string(i))
} else show_message('you stupid ass')
