unit uPonto;


interface
   uses
       Classes, SysUtils, Math;
   type Ponto = class

  protected
    X: real;
    Y: real;
  public
    constructor CrieObj;
    destructor Destrua_se;
    function getX : real;
    function getY : real;
    procedure Redefina_se( ValorX, ValorY : real);
    procedure DetermineDistancia(OutroPonto:Ponto;var Dist:real);
    procedure DetermineDistanciaOrigem(var Dist:real);
    procedure DeslocaHorizontal(dist:real);
    procedure DetermineCoeficiente(OutroPonto:Ponto; var coeficiente:real);
  end;

implementation
constructor Ponto.CrieObj;
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
//14
procedure Ponto.DetermineDistanciaOrigem(var Dist:real);
begin
   Dist := Sqrt (sqr(X-0) + Sqr(Y-0))
end;
//15
procedure Ponto.DeslocaHorizontal(dist:real);
begin
   X:= X + dist;
end;

//16
procedure Ponto.DetermineCoeficiente(OutroPonto: Ponto; var coeficiente : real);
var
OutroX, OutroY : real;
begin
   OutroX := OutroPonto.getX;
   OutroY := OutroPonto.getY;
   coeficiente:= (Y - OutroY)/(X-OutroX);
end;
//17
//quando ele não é uma copia do mesmo endereço de outro objeto
//pode acontecer quando se copia um objeto por valores e nao por referencia
//implica que 2 objetos nao irão apontar pro mesmo endereço
{19
1 - cria-se o objeto ponto e a variavel P recebe a instancia de um ponto
2- Q recebe a referencia do Objeto P
3- Q redefine os valores dele mesmo, mudando tambem os valores de P
4- P recebe outro objeto no lugar
5- perde a referencia do objeto originalmente P
}

//20
procedure Ponto.DetermineCoordenadaPolar(Polar:real);
var dist:real;
begin
   Ponto.DetermineDistanciaOrigem(dist);
   Polar:= Math.arccos(dist);
end;

//21


end.

