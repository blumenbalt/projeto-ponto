program ProjetoPonto;

{$mode objfpc}{$H+}

uses

  Classes, SysUtils, CustApp, uAplicacao;


var
  app: Aplicacao;
begin
  app := Aplicacao.CrieObj;
  aplicacao.Execute_se;
  aplicacao.Destrua_se;
end.

