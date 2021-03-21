program ProjetoPonto;

{$mode objfpc}{$H+}

uses

  Classes, SysUtils, CustApp, uAplicacao;


var
  aplicacao: Aplicacao;
begin
  aplicacao.CrieObj;
  aplicacao.Execute_se;
  aplicacao.Destrua_se;
end.

