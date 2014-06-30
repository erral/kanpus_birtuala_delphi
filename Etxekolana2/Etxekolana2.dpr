// Windows Aplikazioen garapena Delphiz 2002-2003
// 2. Etxekolana
// Mikel Larreategi Arana


program Etxekolana2;

// Kontsola aplikazioa dela esateko direktiba
{$APPTYPE CONSOLE}

  // zenbaki bat [0..255] tartean dagoen jakiteko funtzioa
  function txikiago(n: integer):boolean ;
  begin
    if (n < 256) and (n >= 0) then
      txikiago := true
    else
      txikiago := false;
  end;


var
  // zenbaki bitarra gordetzeko arraya
  bitarra: array [1..8] of string;
  // zenbaki hamaseitarra gordetzeko arraya
  hamaseitarra: array [1..8] of string;
  // zenbaki hamaseitarren itzulpena egiten laguntzeko arraya
  // hondarra > 10 denean, A, B, ... hizkiekin ordezkatzeko
  itzulpena: array [0..15] of char = ('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F');
  // erabiltzaileak sartutako zenbakia izango duen aldagaia
  hamartarra :integer;
  // aldagai laguntzaileak
  i,ind,z,y :integer;
begin
  Writeln('Bigarren etxekolana :)');
  Writeln('');
  Writeln('');
  Writeln('');
  Writeln('Kaixo. Sartu 0 eta 255 arteko zenbaki bat, ');
  Writeln('eta bitar eta hamaseitar eran itzuliko dizut');
  Readln(hamartarra);
  Writeln('');
  if txikiago(hamartarra) then
  begin
    // zenbaki hamartarra bitar bihurtzeko begizta
    z:=hamartarra;
    for i:=8 downto 1 do
     begin
      if z mod 2 = 0 then
        bitarra[i]:='0'
      else
        bitarra[i]:='1';
        
      z:= z div 2;
     end;
    //alderanztu(bitarra, bitarra);
    // Pantailaratu zenbaki bitarra
    write(hamartarra, ' zenbakia bitarrez adierazita:      ');
    for i :=1 to 8 do
     write(bitarra[i]);
   Writeln;

    // zenbaki hamartarra hamaseitar bihurtzeko begizta
    y:=hamartarra;
    for i:=8 downto 1 do
      begin
        ind := y mod 16;
        hamaseitarra[i]:=itzulpena[ind];
        y:=y div 16;
      end;

    // Zenbaki hamaseitarra pantailaratu
    write(hamartarra, ' zenbakia hamaseitarrez adierazita: ');
    for i :=1 to 8 do
      write(hamaseitarra[i]);

   end

   else
    Writeln('Sakatutako zenbakia ez dago 0 eta 255 artean');

   Writeln('');
   Writeln('');
   Writeln('');
   Writeln('');
   Writeln('Sakatu <RETURN> amaitzeko');
   Readln; //itxaroteko sententzia
end.