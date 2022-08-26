program PONG;

uses
  Forms,
  u_campo in 'u_campo.pas' {campo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tcampo, campo);
  Application.Run;
end.
