Program NumberToExcelColumn;
var n:Integer ;

Function NumberToExcelColumn(N:Integer):string;
var i,j:Integer; 
begin
    result := '';
    repeat
	i := N div 26 ;
	j := N mod 26 ;
	if j <> 0 then
    	   begin
    	       result := chr(j+64) + result ;
    	   end
    	else if j = 0 then
    	   begin
    	       result := 'Z' + result ;
    	       i := i - 1 ;
    	   end;
	N := i ;
    until i = 0 ;
end;

begin
    while 2>1 do
	begin
	    readln(n);
	    writeln(NumberToExcelColumn(n));
	end;
end.
