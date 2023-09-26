unit fib_principal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  Spin, TAGraph, TASeries;

type

  { TfrmPrincipal }

  TfrmPrincipal = class(TForm)
    btnCalcular: TButton;
    graFibonacci: TChart;
    lineSerieNumeros: TLineSeries;
    imgLeonardo: TImage;
    txtTit3: TLabel;
    txtTit2: TLabel;
    txtTit1: TLabel;
    txtTit4: TLabel;
    txtCalcular: TLabel;
    memFibonaCalc: TMemo;
    memLeonardo: TMemo;
    memRecurs: TMemo;
    memResultados: TMemo;
    panHistoria: TPanel;
    panLeonardo: TPanel;
    spnNumero: TSpinEdit;
    procedure btnCalcularClick(Sender: TObject);
    function  fncFibonacci(n: integer): integer;
  private

  public

  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.lfm}

{ TfrmPrincipal }



procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
var
  nContador, nNumeroFibonacci: integer;
begin
  memResultados.Lines.Clear;
  lineSerieNumeros.Clear;
  for nContador := 0 to spnNumero.Value-1 do begin
     nNumeroFibonacci := fncFibonacci(nContador);
     memResultados.Lines.Add(IntToStr(nNumeroFibonacci));
     lineSerieNumeros.Add(nNumeroFibonacci);
  end;
end;

function TfrmPrincipal.fncFibonacci(n: integer): integer;
begin
  if (n = 0) or (n = 1) then
    fncFibonacci := n
  else
    fncFibonacci := fncFibonacci(n-1) + fncFibonacci(n-2);
end;

end.

