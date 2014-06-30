program prSendagileKontsultadpr;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmNagusia},
  Unit2 in 'Unit2.pas' {frmErrezetakBete};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmNagusia, frmNagusia);
  Application.CreateForm(TfrmErrezetakBete, frmErrezetakBete);
  Application.Run;
end.
