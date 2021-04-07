unit uAplicacao;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, uPonto, uInter;
type Aplicacao = class

  protected
    umPonto : Ponto;
    aInter : Interfaces;
  public
    constructor CrieObj;
    destructor Destrua_se;
    procedure Execute_se;
end;

implementation
    constructor Aplicacao.CrieObj;
    begin
      umPonto := Ponto.CrieObj;
      aInter := Interfaces.CrieObj;
    end;
    destructor Aplicacao.Destrua_se;
    begin
      umPonto.Destrua_se;
      aInter.Destrua_se;
    end;
    Procedure Aplicacao.Execute_se;
    var valorX, valorY, dist: real;
      outroPonto: Ponto;
    begin
         aInter.DefinaPonto(valorX, valorY);
         umPonto.Redefina_se(valorX, valorY);
         outroPonto:= Ponto.CrieObj;
         aInter.DefinaPonto(valorX, valorY);
         outroPonto.Redefina_se(valorX, valorY);
         umPonto.DetermineDistancia(outroPonto, dist);
         aInter.DigaDistancia(dist);
         umPonto.DetermineDistanciaOrigem(dist);
         aInter.DigaDistancia(dist);

         aInter.DigaValoresPonto(umPonto);
         aInter.EntreComDistancia(dist);
         umPonto.DeslocaHorizontal(dist);
         aInter.DigaValoresPonto(umPonto);
         umPonto.DetermineCoeficiente(OutroPonto,dist);
         aInter.DigaCoeficiente(dist);
    end;

end.

