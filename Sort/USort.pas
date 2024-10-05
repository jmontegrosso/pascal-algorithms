unit USort;

interface


type
  TSort = class
    class procedure BubbleSort(var AList: Array of integer); static;
    class procedure InsertionSort(var AList: Array of integer); static;
  end;

implementation

{ TSort }

class procedure TSort.BubbleSort(var AList: array of integer);
var
  LTemp: integer;
begin
  for var I := 0 to Length(AList) - 1 do
    for var J := I + 1 to Length(AList) - 1 do
      if AList[I] > AList[J] then
      begin
        LTemp := AList[I];
        AList[I] := AList[J];
        AList[J] := LTemp;
      end;
end;

class procedure TSort.InsertionSort(var AList: array of integer);
var
  LTemp: integer;
begin
  for var I := 1 to high(AList) do
  begin
    var J := I;
    LTemp := AList[I];
    while (J > 0) and (AList[J - 1] > LTemp) do
    begin
      AList[J] := AList[J - 1];
      Dec(J);
    end;
    AList[J] := LTemp;
  end;
end;

end.
