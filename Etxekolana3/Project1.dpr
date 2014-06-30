program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmNagusia};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmNagusia, frmNagusia);
  Application.Run;
end.
