Program ExcelColumnToNumber ;
Uses Math ;
Var t:String ;

Function num( S:String):Integer ;
Var i,n:Integer ; l:String;
begin
    Result := 0 ;
    n := Length(S) ;      //计算字符串长度
    //n := Ord(S[0]) ;    //也可，但在 Delphi XE2 中被禁止了
    for i := 1 to n do    //循环取出每个字母
	begin
	    l := Copy(S,i,1) ;
	    Result := (Ord(Upcase(l[1])) - 64) * Trunc(Power(26,n-i)) + Result ;  
	    { 
	    26进制到10进制的转换，由于upcase只接收字母，而l仍是一个字符串，通过
	    l[1]可将其转换为字符(字符串l本身可看作一个由字母组成的数组)
	    }
	end;
end;

begin
    while 2>1 do
	begin
	Readln(t) ;
	Writeln(num(t)) ;
	end;
end.
