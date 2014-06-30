unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TfrmNagusia = class(TForm)
    txtKutxa1: TEdit;
    cmdAsmatu: TButton;
    lblEmaitza: TLabel;
    cmdAmaitu: TButton;
    cmdEzkerrera: TButton;
    cmdEskuinera: TButton;
    Koloreak: TRadioGroup;
    lblArgibideak: TLabel;
    procedure cmdAsmatuClick(Sender: TObject);
    procedure txtKutxa1Change(Sender: TObject);
    procedure cmdAmaituClick(Sender: TObject);
    procedure cmdEzkerreraClick(Sender: TObject);
    procedure cmdEskuineraClick(Sender: TObject);
    procedure KoloreakClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNagusia: TfrmNagusia;


implementation

{$R *.dfm}

procedure TfrmNagusia.cmdAsmatuClick(Sender: TObject);
begin
  lblArgibideak.Visible := False;
  lblEmaitza.Caption := lblEmaitza.Caption + ' '+ txtKutxa1.Text;
  lblEmaitza.Tag := lblEmaitza.Tag + 1;
  txtKutxa1.Text := '';
  txtKutxa1.Tag := txtKutxa1.Tag - 1;
  txtKutxa1.SetFocus;

end;

procedure TfrmNagusia.txtKutxa1Change(Sender: TObject);
begin
 txtKutxa1.Tag := txtKutxa1.Tag + 1;
end;

procedure TfrmNagusia.cmdAmaituClick(Sender: TObject);
begin
  showMessage(inttoStr(txtKutxa1.Tag) + ' hizki idatzi dituzu, eta ' + inttostr(lblEmaitza.Tag) + ' aldiz eguneratu da emaitza');
  frmNagusia.Close ;
end;



procedure TfrmNagusia.cmdEzkerreraClick(Sender: TObject);
begin
  lblEmaitza.Left := lblEmaitza.Left - 15;
end;



procedure TfrmNagusia.cmdEskuineraClick(Sender: TObject);
begin
  lblEmaitza.Left := lblEmaitza.Left + 15;
end;

procedure TfrmNagusia.KoloreakClick(Sender: TObject);
begin
  case Koloreak.ItemIndex of
    0 : lblEmaitza.Font.Color := clRed;
    1 : lblEmaitza.Font.Color := clGreen;
    2 : lblEmaitza.Font.Color := clBlue;
    3 : lblEmaitza.Font.Color := clWhite;
    4 : lblEmaitza.Font.Color := clBlack;
    5 : lblEmaitza.Font.Color := clYellow;

  end;
end;

procedure TfrmNagusia.FormCreate(Sender: TObject);
begin
  Koloreak.ItemIndex := 4;
end;


end.
