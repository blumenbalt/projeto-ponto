unit uInter;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
  type Interfaces = class
    public
      constructor CrieObj;
      destructor Destrua_se;
      procedure DefinaPonto(var pValorX, pValorY :real);
      procedure DigaDistancia(Dist:real);
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
end;

end.

