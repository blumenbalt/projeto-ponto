unit uInter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
  type Inferfaces = class
    public
      constructor CrieObj;
      destructor Destrua_se;
      procedure DefinaPonto(var pValorX, pValorY :real);
      procedure DigaDistancia(Dist:real);
  end;


implementation

constructor Inferfaces.CrieObj;
begin
end;

destructor Inferfaces.Destrua_se;
begin
end;

procedure Inferfaces.DefinaPonto(var pValorX, pValorY:real);
begin
  writeln('Digite um valor para X: ');
  readln(pValorx);
  writeln('Digite um valor para Y: ');
  readln(pValorY);
end;

procedure Inferfaces.DigaDistancia(Dist:real);
begin
  writeln('distancia e igual a: ', Dist);
end;

end.

