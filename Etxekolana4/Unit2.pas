// Windows Aplikazioen Garapena Delphi-z 2002-2003
// 4. etxekolana
//
// Programa hau, Informatika Fakultateko "Softwarearen Ingeniaritza"
// ikasgaiko praktikan "inspiratuta" dago.
// Programak, sendagile baten gaixo bat aztertu ostean egin ditzakeen
// gauzak egitea ahalbidetzen du (errezetak bete, espezialistengana bidali,...)
//
// Mikel Larreategi Arana

unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Unit1;

type
  TfrmErrezetakBete = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtGaixoNAN: TEdit;
    txtSendagileNAN: TEdit;
    Label3: TLabel;
    txtAreaErrezeta: TMemo;
    cmdInprimatu: TBitBtn;
    cmdEzeztatu: TButton;
    cmdBesteBat: TButton;
    procedure cmdEzeztatuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmdInprimatuClick(Sender: TObject);
    procedure cmdBesteBatClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmErrezetakBete: TfrmErrezetakBete;
  // Zenbat aldagaia, zenbat errezeta bete diren kontatzeko da, fitxategiak ongi ateratzeko
  zenbat : integer;

implementation

{$R *.dfm}

procedure TfrmErrezetakBete.cmdEzeztatuClick(Sender: TObject);
begin
  frmErrezetakBete.Close;
  frmNagusia.Enabled:=True;
  frmNagusia.SetFocus;
   
end;

procedure TfrmErrezetakBete.FormCreate(Sender: TObject);
begin
  // Fitxa sortzean kontagailua 0ra hasieratu
  zenbat := 0;
  frmErrezetakBete.txtGaixoNAN.Text := frmNagusia.txtGaixoNAN.Text;
  frmErrezetakBete.txtSendagileNAN.Text := frmNagusia.txtSendagileNAN.Text;
end;

procedure TfrmErrezetakBete.cmdInprimatuClick(Sender: TObject);
begin
  // Errezeta kopurua inkrementatu
  zenbat := zenbat +1 ;
  frmErrezetakBete.txtAreaErrezeta.Lines.SaveToFile(String(txtgaixoNAN.text)+' Errezeta'+inttoStr(zenbat)+'.txt');
  frmNagusia.txtAreaEmaitzak.Lines.Add('ERREZETA');
  frmNagusia.txtAreaEmaitzak.Lines.AddStrings(frmErrezetakBete.txtAreaErrezeta.Lines);
  Application.MessageBox(PAnsiChar(String(txtgaixoNAN.text)+' Errezeta'+inttoStr(zenbat)+'.txt fitxategian dago errezeta'),'Gordeta');
  frmErrezetakBete.txtAreaErrezeta.Enabled := False;
  frmErrezetakBete.cmdInprimatu.Enabled :=False;


end;

procedure TfrmErrezetakBete.cmdBesteBatClick(Sender: TObject);
begin
  //Beste errezeta baterako prestatu
  frmErrezetakBete.txtAreaErrezeta.Enabled := true;
  frmErrezetakBete.txtAreaErrezeta.Clear;
  frmErrezetakBete.cmdInprimatu.enabled := true;
end;

end.



