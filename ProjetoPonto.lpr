program ProjetoPonto;

{$mode objfpc}{$H+}

uses

  Classes, SysUtils, CustApp, uAplicacao;


var
  app: Aplicacao;
begin
  app.CrieObj;
  app.Execute_se;
  app.Destrua_se;
end.

