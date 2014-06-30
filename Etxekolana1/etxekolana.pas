// Windows Aplikazioen Garapena Delphi-z 2002-2003

//
// Mikel Larreategi Arana
// 2003-2-21
//

program etxekolana;

// Kontsola aplikazioa dela esateko direktiba
{$APPTYPE CONSOLE}

  function lehena (n:integer): boolean;
  var
    i,emaitza: integer;
  begin
  lehena := True;
    emaitza := 0;
    for i:=2 to n-1 do
      if n mod i = 0 then
        emaitza := emaitza + 1;
    if not (emaitza = 0) then
      lehena := False;

  end;

  procedure zatitzaileak (n: integer);
  var
    i: integer;
  begin
    for i:=1 to n do
      if (n mod i = 0) and lehena(i) then
       WriteLn(' => ', i);
  end;


var
zenbakia : Integer;
izena: String;
begin
 	WriteLn('Lehenengo etxekolana :)');
	WriteLn;
	Write('Sartu zure izena: ');
	ReadLn(izena);
  WriteLn('Kaixo ',izena,', ongi etorri Windows aplikazioen garapena Delphiz ikasgaira');
  WriteLn;
  Write('Sartu zenbaki positibo bat:');
  Read(zenbakia);
  WriteLn('Ondorengo lerroetan, zenbaki horren zatitzaile lehenak agertuko dira');
  zatitzaileak(zenbakia);

	WriteLn('Amaitzeko RETURN tekla sakatu');
	ReadLn; { itxaroteko sententzia }
  ReadLn;
end.