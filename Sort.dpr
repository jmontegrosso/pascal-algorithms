program Sort;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  USort in 'Sort\USort.pas';

var
  LArr: Array of integer;
begin
  try
    var I := 0;
    var LNum := 0;
    var LSize := 0;

    Writeln('Define the size of the array:');
    ReadLn(Input, LSize);
    SetLength(LArr, LSize);

    Writeln('');
    Writeln('Enter ' + LSize.ToString + ' numbers:');
    repeat
      ReadLn(Input, LNum);
      LArr[I] := LNum;
      Inc(I);
    until I >= LSize;

    TSort.InsertionSort(LArr);

    Writeln('');
    Writeln('Ordered list:');
    I := 0;

    for I in LArr do
      Write(I.ToString + ' ');

    ReadLn(Input);
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
