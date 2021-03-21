unit uPonto;


interface
   uses
       Classes, SysUtils;
   type Ponto = class

  protected
    X: real;
    Y: real;
  public
    constructor CrieInstancia;
    destructor Destrua_se;
    function getX : real;
    function getY : real;
    procedure Redefina_se( ValorX, ValorY : real);
    procedure DetermineDistancia(OutroPonto:Ponto;var Dist:real);
  end;

implementation
constructor Ponto.CrieInstancia;
begin
  X:=0;
  Y:=0;
end;
destructor Ponto.Destrua_se;
begin
end;

function Ponto.getX:real;
begin
   Result:= X;
end;
function Ponto.getY:real;
begin
   Result:= Y;
end;

procedure Ponto.Redefina_se(ValorX, ValorY:real);
begin
   X := ValorX;
   Y := ValorY;
end;

procedure Ponto.DetermineDistancia(OutroPonto: Ponto; var Dist : real);
var
OutroX, OutroY : real;
begin
   OutroX := OutroPonto.getX;
   OutroY := OutroPonto.getY;
   Dist := Sqrt (sqr(X-OutroX) + Sqr(Y-OutroY));
end;



end.

