unit uInter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, uPonto;
  type Interfaces = class
    public
      constructor CrieObj;
      destructor Destrua_se;
      procedure DefinaPonto(var pValorX, pValorY :real);
      procedure DigaDistancia(Dist:real);
      procedure DigaValoresPonto(pPonto:Ponto);
      procedure EntreComDistancia(var dist:real);
  end;


implementation

constructor Interfaces.CrieObj;
begin
end;

destructor Interfaces.Destrua_se;
begin
end;

procedure Interfaces.DefinaPonto(var pValorX, pValorY:real);
begin
  writeln('Digite um valor para X: ');
  readln(pValorx);
  writeln('Digite um valor para Y: ');
  readln(pValorY);
end;

procedure Interfaces.DigaDistancia(Dist:real);
begin
  writeln('distancia e igual a: ', Dist);
  readln();
end;

procedure Interfaces.DigaValoresPonto(pPonto:ponto);
begin
  writeln('X:', pPonto.getX());
  writeln('Y:', pPonto.getY());
  readln();
end;

procedure Interfaces.EntreComDistancia(var dist:real);
begin
    writeln('Digite um valor para distancia a ser percorrida horizontalmente: ');
    readln(dist);
end;

procedure Interfaces.DigaCoeficiente(Dist:real);
begin
  writeln('o coeficiente e igual a: ', Dist);
  readln();
end;

end.

