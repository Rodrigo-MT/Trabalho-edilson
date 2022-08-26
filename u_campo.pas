unit u_campo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  Tcampo = class(TForm)
    bola: TPanel;
    player1: TPanel;
    moverDireita: TTimer;
    MoverEsquerda: TTimer;
    procedure moverDireitaTimer(Sender: TObject);
    procedure MoverEsquerdaTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  campo: Tcampo;

implementation

{$R *.dfm}
procedure colisaoPlayer1;
var
  corpo:Integer;
begin
  corpo := campo.bola.Left + campo.bola.Width;
  if corpo >= campo.player1.Left then
  begin
    campo.moverDireita.Enabled := false;
    campo.MoverEsquerda.Enabled := true;
  end;
end;

procedure Tcampo.moverDireitaTimer(Sender: TObject);
begin
   bola.Left := bola.Left + 5;
   colisaoPlayer1;
end;

procedure Tcampo.MoverEsquerdaTimer(Sender: TObject);
begin
   bola.Left := bola.Left - 5;
end;

procedure Tcampo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 40 then
  begin
    player1.Top := player1.Top + 10;
  end;

  if key = 38 then
    player1.Top := player1.Top - 10;
end;

end.
