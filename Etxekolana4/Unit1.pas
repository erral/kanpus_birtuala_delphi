// Windows Aplikazioen Garapena Delphi-z 2002-2003
// 4. etxekolana
//
// Programa hau, Informatika Fakultateko "Softwarearen Ingeniaritza"
// ikasgaiko praktikan "inspiratuta" dago.
// Programak, sendagile baten gaixo bat aztertu ostean egin ditzakeen
// gauzak egitea ahalbidetzen du (errezetak bete, espezialistengana bidali,...)
//
// Mikel Larreategi Arana


unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  TfrmNagusia = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    txtGaixoNAN: TEdit;
    txtSendagileNAN: TEdit;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    GroupBox2: TGroupBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    txtKanpoEspezialitatea: TEdit;
    Label4: TLabel;
    cmBoxKanpoLekua: TComboBox;
    txtAreaEmaitzak: TMemo;
    Label5: TLabel;
    cmdErrezetakBete: TButton;
    cmdGorde: TButton;
    cmdBolanteak: TButton;
    CheckBox13: TCheckBox;
    cmdBesteGaixo: TButton;
    procedure cmdErrezetakBeteClick(Sender: TObject);
    procedure cmdGordeClick(Sender: TObject);
    procedure cmdBolanteakClick(Sender: TObject);
    procedure cmdBesteGaixoClick(Sender: TObject);
    procedure itxi(Sender: TObject; var CanClose: Boolean);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNagusia: TfrmNagusia;

implementation

uses Unit2;

{$R *.dfm}


procedure TfrmNagusia.cmdErrezetakBeteClick(Sender: TObject);
// Metodo honek fitxa berri bat irekitzen du
begin
  // Fitxa nagusian NANik idatzi gabe badago ez diogu utziko sendagileari ezer egiten
  if (frmNagusia.txtGaixoNAN.Text <= '') or (frmNagusia.txtSendagileNAN.Text <= '') then
    Application.MessageBox('Eta NANak zer?','NAN gabe ez',0)
  else
    begin
      // Nagusira itzultzen ez utzi (fitxa berria "modala" egin)
      frmNagusia.Enabled := False;
      // Fitxa berria sortu
      Application.CreateForm(TfrmErrezetakBete,frmErrezetakBete);
      // Fitxa gaitu
      frmErrezetakBete.Enabled := true;
      // Fitxa erakustarazi
      frmErrezetakBete.Visible := True;
    end;
end;

procedure TfrmNagusia.cmdGordeClick(Sender: TObject);
begin
// Fitxa nagusian NANik idatzi gabe badago ez diogu utziko sendagileari ezer egiten
  if (frmNagusia.txtGaixoNAN.Text <= '') or (frmNagusia.txtSendagileNAN.Text <= '') then
    Application.MessageBox('Eta NANak zer?','NAN gabe ez',0)
  else
    // Datuak fitxategi baten gorde
    frmNagusia.txtAreaEmaitzak.Lines.SaveToFile(txtGaixoNAN.Text + '.txt');
end;

procedure TfrmNagusia.cmdBolanteakClick(Sender: TObject);
begin
  // Fitxa nagusian NANik idatzi gabe badago ez diogu utziko sendagileari ezer egiten
  if (frmNagusia.txtGaixoNAN.Text <= '') or (frmNagusia.txtSendagileNAN.Text <= '') then
    Application.MessageBox('Eta NANak zer?','NAN gabe ez',0)
  else
  begin
  // Modu hau pixka bat zatarra da, baina copy-paste-ri esker oso erraz egiten da ;)
  frmNagusia.txtAreaEmaitzak.Lines.Add('FROGAK');
  if CheckBox1.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox1.Caption));
  if CheckBox2.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox2.Caption));
  if CheckBox3.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox3.Caption));
  if CheckBox4.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox4.Caption));
  if CheckBox5.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox5.Caption));

  frmNagusia.txtAreaEmaitzak.Lines.Add('ESPEZIALISTAK');
  if CheckBox6.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox6.Caption));
  if CheckBox7.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox7.Caption));
  if CheckBox8.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox8.Caption));
  if CheckBox9.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox9.Caption));
  if CheckBox10.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox10.Caption));
  if CheckBox11.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox11.Caption));
  if CheckBox12.Checked then
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(CheckBox12.Caption));

  // Kanpo espezialitatea

  if CheckBox13.Checked then
    begin
    frmNagusia.txtAreaEmaitzak.Lines.Add('KANPO ESPEZIALISTA');
    frmNagusia.txtAreaEmaitzak.Lines.Add(String(txtKanpoEspezialitatea.Text));
    frmNagusia.txtAreaEmaitzak.Lines.Add(cmBoxKanpoLekua.Items.Strings[cmBoxKanpoLekua.ItemIndex]);
    end;
  end;
end;

procedure TfrmNagusia.cmdBesteGaixoClick(Sender: TObject);
// Gaixo berriarentzat fitxa hustu
begin
  frmNagusia.txtGaixoNAN.Text := '';
  frmNagusia.txtSendagileNAN.Text := '';
  frmNagusia.txtKanpoEspezialitatea.Text := '';
  frmNagusia.txtAreaEmaitzak.Text := '';
  frmNagusia.CheckBox1.Checked := False;
  frmNagusia.CheckBox2.Checked := False;
  frmNagusia.CheckBox3.Checked := False;
  frmNagusia.CheckBox4.Checked := False;
  frmNagusia.CheckBox5.Checked := False;
  frmNagusia.CheckBox6.Checked := False;
  frmNagusia.CheckBox7.Checked := False;
  frmNagusia.CheckBox8.Checked := False;
  frmNagusia.CheckBox9.Checked := False;
  frmNagusia.CheckBox10.Checked := False;
  frmNagusia.CheckBox11.Checked := False;
  frmNagusia.CheckBox12.Checked := False;
  frmNagusia.CheckBox13.Checked := False;
end;

procedure TfrmNagusia.itxi(Sender: TObject; var CanClose: Boolean);
// onCloseQuery gertaerari erantzuteko metodoa
begin
  Application.MessageBox('Agur !! Erabilgarria izatea espero dut','Agur',0);
end;

end.
