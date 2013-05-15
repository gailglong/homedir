" Vim syntax file
" For version 6.x: Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn case ignore
setlocal foldmethod=syntax

" Numbers and hexidecimal values
syn match mysqlNumber            "-\=\<[0-9]*\>"
syn match mysqlNumber            "-\=\<[0-9]*\.[0-9]*\>"
syn match mysqlNumber            "-\=\<[0-9][0-9]*e[+-]\=[0-9]*\>"
syn match mysqlNumber            "-\=\<[0-9]*\.[0-9]*e[+-]\=[0-9]*\>"
syn match mysqlNumber            "\<0x[abcdefABCDEF0-9]*\>"

" User variables
syn match mysqlVariable          "@\a*[A-Za-z0-9]*[._]*[A-Za-z0-9]*"
syn match mysqlVariable          "@\a*[A-Za-z0-9]*[._]*[A-Za-z0-9]*"

syn keyword qbaseSQL         union duplicate
syn keyword qbaseSQL         action add after aggregate all alter as asc auto_increment avg avg_row_length
syn keyword qbaseSQL         both by
syn keyword qbaseSQL         cascade change character check checksum column columns comment constraint create cross
syn keyword qbaseSQL         current_date current_time current_timestamp
syn keyword qbaseSQL         data database databases day day_hour day_minute day_second
syn keyword qbaseSQL         default delayed delay_key_write delete desc describe distinct distinctrow drop
syn keyword qbaseSQL         enclosed escape escaped explain
syn keyword qbaseSQL         fields file first flush for foreign from full function
syn keyword qbaseSQL         global grant grants group
syn keyword qbaseSQL         having heap high_priority hosts hour hour_minute hour_second
syn keyword qbaseSQL         identified ignore index infile inner insert insert_id into isam
syn keyword qbaseSQL         join
syn keyword qbaseSQL         key keys kill last_insert_id leading left limit lines load local lock logs long 
syn keyword qbaseSQL         low_priority
syn keyword qbaseSQL         match max_rows middleint min_rows minute minute_second modify month myisam
syn keyword qbaseSQL         natural no
syn keyword qbaseSQL         on optimize option optionally order outer outfile
syn keyword qbaseSQL         pack_keys partial password primary privileges procedure process processlist
syn keyword qbaseSQL         read references reload rename replace restrict returns revoke right row rows
syn keyword qbaseSQL         second select show shutdown soname sql_big_result sql_big_selects sql_big_tables sql_log_off
syn keyword qbaseSQL         sql_log_update sql_low_priority_updates sql_select_limit sql_small_result sql_warnings starting
syn keyword qbaseSQL         status straight_join string
syn keyword qbaseSQL         table tables temporary terminated to trailing type
syn keyword qbaseSQL         unique unlock unsigned update usage use using
syn keyword qbaseSQL         values varbinary variables varying
syn keyword qbaseSQL         where with write
syn keyword qbaseSQL         year_month
syn keyword qbaseSQL         zerofill
syn region qbaseSQLType             start="float\W" end="."me=s-1 
syn region qbaseSQLType             start="float$" end="."me=s-1 
syn region qbaseSQLType             start="float(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="double\W" end="."me=s-1
syn region qbaseSQLType             start="double$" end="."me=s-1
syn region qbaseSQLType             start="double(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="double precision\W" end="."me=s-1
syn region qbaseSQLType             start="double precision$" end="."me=s-1
syn region qbaseSQLType             start="double precision(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="real\W" end="."me=s-1
syn region qbaseSQLType             start="real$" end="."me=s-1
syn region qbaseSQLType             start="real(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="numeric(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="dec\W" end="."me=s-1
syn region qbaseSQLType             start="dec$" end="."me=s-1
syn region qbaseSQLType             start="dec(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="decimal\W" end="."me=s-1
syn region qbaseSQLType             start="decimal$" end="."me=s-1
syn region qbaseSQLType             start="decimal(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="\Wtimestamp\W" end="."me=s-1
syn region qbaseSQLType             start="\Wtimestamp$" end="."me=s-1
syn region qbaseSQLType             start="\Wtimestamp(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="^timestamp\W" end="."me=s-1
syn region qbaseSQLType             start="^timestamp$" end="."me=s-1
syn region qbaseSQLType             start="^timestamp(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="\Wyear(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="^year(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="char(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="varchar(" end=")" contains=mysqlNumber,mysqlVariable
syn region qbaseSQLType             start="enum(" end=")" contains=mysqlString,mysqlVariable
syn region qbaseSQLType             start="\Wset(" end=")" contains=mysqlString,mysqlVariable
syn region qbaseSQLType             start="^set(" end=")" contains=mysqlString,mysqlVariable
syn region qbaseSQLFunction         start="abs(" end=")" 
syn region qbaseSQLFunction         start="acos(" end=")" 
syn region qbaseSQLFunction         start="adddate(" end=")" 
syn region qbaseSQLFunction         start="ascii(" end=")" 
syn region qbaseSQLFunction         start="asin(" end=")" 
syn region qbaseSQLFunction         start="atan(" end=")" 
syn region qbaseSQLFunction         start="atan2(" end=")" 
syn region qbaseSQLFunction         start="benchmark(" end=")" 
syn region qbaseSQLFunction         start="bin(" end=")" 
syn region qbaseSQLFunction         start="bit_and(" end=")" 
syn region qbaseSQLFunction         start="bit_count(" end=")" 
syn region qbaseSQLFunction         start="bit_or(" end=")" 
syn region qbaseSQLFunction         start="ceiling(" end=")" 
syn region qbaseSQLFunction         start="character_length(" end=")" 
syn region qbaseSQLFunction         start="char_length(" end=")" 
syn region qbaseSQLFunction         start="concat(" end=")" 
syn region qbaseSQLFunction         start="group_concat(" end=")" 
syn region qbaseSQLFunction         start="concat_ws(" end=")" 
syn region qbaseSQLFunction         start="connection_id(" end=")" 
syn region qbaseSQLFunction         start="conv(" end=")" 
syn region qbaseSQLFunction         start="cos(" end=")" 
syn region qbaseSQLFunction         start="cot(" end=")" 
syn region qbaseSQLFunction         start="count(" end=")" 
syn region qbaseSQLFunction         start="curdate(" end=")" 
syn region qbaseSQLFunction         start="curtime(" end=")" 
syn region qbaseSQLFunction         start="date_add(" end=")" 
syn region qbaseSQLFunction         start="date_format(" end=")" 
syn region qbaseSQLFunction         start="date_sub(" end=")" 
syn region qbaseSQLFunction         start="dayname(" end=")" 
syn region qbaseSQLFunction         start="dayofmonth(" end=")" 
syn region qbaseSQLFunction         start="dayofweek(" end=")" 
syn region qbaseSQLFunction         start="dayofyear(" end=")" 
syn region qbaseSQLFunction         start="decode(" end=")" 
syn region qbaseSQLFunction         start="degrees(" end=")" 
syn region qbaseSQLFunction         start="elt(" end=")" 
syn region qbaseSQLFunction         start="encode(" end=")" 
syn region qbaseSQLFunction         start="encrypt(" end=")" 
syn region qbaseSQLFunction         start="exp(" end=")" 
syn region qbaseSQLFunction         start="export_set(" end=")" 
syn region qbaseSQLFunction         start="extract(" end=")" 
syn region qbaseSQLFunction         start="field(" end=")" 
syn region qbaseSQLFunction         start="find_in_set(" end=")" 
syn region qbaseSQLFunction         start="floor(" end=")" 
syn region qbaseSQLFunction         start="format(" end=")" 
syn region qbaseSQLFunction         start="from_days(" end=")" 
syn region qbaseSQLFunction         start="from_unixtime(" end=")" 
syn region qbaseSQLFunction         start="get_lock(" end=")" 
syn region qbaseSQLFunction         start="greatest(" end=")" 
syn region qbaseSQLFunction         start="group_unique_users(" end=")" 
syn region qbaseSQLFunction         start="hex(" end=")" 
syn region qbaseSQLFunction         start="inet_aton(" end=")" 
syn region qbaseSQLFunction         start="inet_ntoa(" end=")" 
syn region qbaseSQLFunction         start="instr(" end=")" 
syn region qbaseSQLFunction         start="lcase(" end=")" 
syn region qbaseSQLFunction         start="least(" end=")" 
syn region qbaseSQLFunction         start="length(" end=")" 
syn region qbaseSQLFunction         start="load_file(" end=")" 
syn region qbaseSQLFunction         start="locate(" end=")" 
syn region qbaseSQLFunction         start="log(" end=")" 
syn region qbaseSQLFunction         start="log10(" end=")" 
syn region qbaseSQLFunction         start="lower(" end=")" 
syn region qbaseSQLFunction         start="lpad(" end=")" 
syn region qbaseSQLFunction         start="ltrim(" end=")" 
syn region qbaseSQLFunction         start="make_set(" end=")" 
syn region qbaseSQLFunction         start="master_pos_wait(" end=")" 
syn region qbaseSQLFunction         start="max(" end=")" 
syn region qbaseSQLFunction         start="md5(" end=")" 
syn region qbaseSQLFunction         start="mid(" end=")" 
syn region qbaseSQLFunction         start="min(" end=")" 
syn region qbaseSQLFunction         start="mod(" end=")" 
syn region qbaseSQLFunction         start="monthname(" end=")" 
syn region qbaseSQLFunction         start="now(" end=")" 
syn region qbaseSQLFunction         start="oct(" end=")" 
syn region qbaseSQLFunction         start="octet_length(" end=")" 
syn region qbaseSQLFunction         start="ord(" end=")" 
syn region qbaseSQLFunction         start="period_add(" end=")" 
syn region qbaseSQLFunction         start="period_diff(" end=")" 
syn region qbaseSQLFunction         start="pi(" end=")" 
syn region qbaseSQLFunction         start="position(" end=")" 
syn region qbaseSQLFunction         start="pow(" end=")" 
syn region qbaseSQLFunction         start="power(" end=")" 
syn region qbaseSQLFunction         start="quarter(" end=")" 
syn region qbaseSQLFunction         start="radians(" end=")" 
syn region qbaseSQLFunction         start="rand(" end=")" 
syn region qbaseSQLFunction         start="release_lock(" end=")" 
syn region qbaseSQLFunction         start="repeat(" end=")" 
syn region qbaseSQLFunction         start="reverse(" end=")" 
syn region qbaseSQLFunction         start="round(" end=")" 
syn region qbaseSQLFunction         start="rpad(" end=")" 
syn region qbaseSQLFunction         start="rtrim(" end=")" 
syn region qbaseSQLFunction         start="sec_to_time(" end=")" 
syn region qbaseSQLFunction         start="session_user(" end=")" 
syn region qbaseSQLFunction         start="sign(" end=")" 
syn region qbaseSQLFunction         start="sin(" end=")" 
syn region qbaseSQLFunction         start="soundex(" end=")" 
syn region qbaseSQLFunction         start="space(" end=")" 
syn region qbaseSQLFunction         start="sqrt(" end=")" 
syn region qbaseSQLFunction         start="std(" end=")" 
syn region qbaseSQLFunction         start="stddev(" end=")" 
syn region qbaseSQLFunction         start="strcmp(" end=")" 
syn region qbaseSQLFunction         start="subdate(" end=")" 
syn region qbaseSQLFunction         start="substring(" end=")" 
syn region qbaseSQLFunction         start="substring_index(" end=")" 
syn region qbaseSQLFunction         start="subtime(" end=")" 
syn region qbaseSQLFunction         start="sum(" end=")" 
syn region qbaseSQLFunction         start="sysdate(" end=")" 
syn region qbaseSQLFunction         start="system_user(" end=")" 
syn region qbaseSQLFunction         start="tan(" end=")" 
syn region qbaseSQLFunction         start="time_format(" end=")" 
syn region qbaseSQLFunction         start="time_to_sec(" end=")" 
syn region qbaseSQLFunction         start="to_days(" end=")" 
syn region qbaseSQLFunction         start="trim(" end=")" 
syn region qbaseSQLFunction         start="ucase(" end=")" 
syn region qbaseSQLFunction         start="unique_users(" end=")" 
syn region qbaseSQLFunction         start="unix_timestamp(" end=")" 
syn region qbaseSQLFunction         start="upper(" end=")" 
syn region qbaseSQLFunction         start="user(" end=")" 
syn region qbaseSQLFunction         start="version(" end=")" 
syn region qbaseSQLFunction         start="week(" end=")" 
syn region qbaseSQLFunction         start="weekday(" end=")" 
syn region qbaseSQLFunction         start="yearweek(" end=")" 

syn region qbaseName		start=/^"/ end=/"/

syn match   qbaseComment /#\%(.\%({{{\|}}}\)\@!\)*$/
  \ contains=qbaseTodo,@Spell

syn region  qbaseFold matchgroup=qbaseComment
  \ start='#.*{{{.*$' end='#.*}}}.*$' fold transparent
" strings
syn region qbaseString		start=+'+ end=+'+ skip=+\\\\\|\\'+ 

syn match qbaseEndStr	/",$/
syn match qbaseStrToken /%s/
syn match qbaseStr		/[-_\w\d]+\.[-_\w\d]+/
syn match qbaseOp		/"="/ contained display

" Logical, string and  numeric operators
syn keyword mysqlOperator        between not and or is in like regexp rlike binary exists
syn region mysqlOperator         start="isnull(" end=")" contains=ALL
syn region mysqlOperator         start="coalesce(" end=")" contains=ALL
syn region mysqlOperator         start="interval(" end=")" contains=ALL

" Control flow functions
syn keyword mysqlFlow            case when then else end
syn region mysqlFlow             start="ifnull("   end=")"  contains=ALL
syn region mysqlFlow             start="nullif("   end=")"  contains=ALL
syn region mysqlFlow             start="if("       end=")"  contains=ALL

highlight link qbaseName		Statement
highlight link qbaseStatement 	Statement
highlight link qbaseComment 	Comment
highlight link qbaseSQL			Define
highlight link qbaseStr			Special
highlight link qbaseString		String
highlight link qbaseOperator	Operator
highlight link qbaseSQLType		Type
highlight link qbaseSQLFUNCTION	Function
highlight link qbaseEndStr		Special
highlight link qbaseStrToken	Special
highlight link qbaseOp			Operator
highlight link mysqlNumber		Number
highlight link mysqlVariable	Identifier
highlight link mysqlOperator	Statement
highlight link mysqlFlow		Statement

"Statement, Function, Conditional, Repeat, String, Special, Operator,
"PreCondit, Comment, Todo, Define, Type, Identifier

let b:current_syntax = "qbase"

