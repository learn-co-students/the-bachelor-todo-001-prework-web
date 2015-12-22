
[1mFrom:[0m /home/nitrous/code/labs/the-bachelor-todo-001-prework-web/lib/bachelor.rb @ line 25 Object#get_contestant_name:

    [1;34m20[0m: [32mdef[0m [1;34mget_contestant_name[0m(data, occupation)
    [1;34m21[0m:   [1;34m# code here[0m
    [1;34m22[0m:   name = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m23[0m:   data.each {|season, season_data|
    [1;34m24[0m:     season_data.each {|stat_key, stat_value|
 => [1;34m25[0m:         binding.pry
    [1;34m26[0m:         [32mif[0m stat_key[[31m[1;31m"[0m[31moccupation[1;31m"[0m[31m[0m] == occupation
    [1;34m27[0m:           name = stat_key[[31m[1;31m"[0m[31mname[1;31m"[0m[31m[0m]
    [1;34m28[0m:         [32mend[0m
    [1;34m29[0m:      }
    [1;34m30[0m:   }
    [1;34m31[0m:   puts name
    [1;34m32[0m: [32mend[0m

