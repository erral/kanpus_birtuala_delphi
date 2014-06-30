object frmNagusia: TfrmNagusia
  Left = 233
  Top = 139
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = '3. etxekolana'
  ClientHeight = 249
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblEmaitza: TLabel
    Left = 296
    Top = 40
    Width = 265
    Height = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblArgibideak: TLabel
    Left = 24
    Top = 8
    Width = 146
    Height = 16
    Caption = 'Idatzi zerbait testu kutxan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object txtKutxa1: TEdit
    Left = 64
    Top = 120
    Width = 185
    Height = 28
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = txtKutxa1Change
  end
  object cmdAsmatu: TButton
    Left = 64
    Top = 176
    Width = 121
    Height = 41
    Cursor = crUpArrow
    Hint = 'Hemen sakatuz testu kutxakoa goian azalduko da'
    Caption = 'Aldatu'
    Default = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = cmdAsmatuClick
  end
  object cmdAmaitu: TButton
    Left = 200
    Top = 176
    Width = 121
    Height = 41
    Cursor = crHandPoint
    Hint = 'Programa amaitzeko sakatu hemen'
    Caption = 'Amaitu'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnClick = cmdAmaituClick
  end
  object cmdEzkerrera: TButton
    Left = 32
    Top = 72
    Width = 41
    Height = 25
    Hint = 'Sakatu hemen testua ezkerrera mugitzeko'
    Caption = '<='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = cmdEzkerreraClick
  end
  object cmdEskuinera: TButton
    Left = 448
    Top = 72
    Width = 41
    Height = 25
    Hint = 'Sakatu hemen testua eskumara mugitzeko'
    Caption = '=>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = cmdEskuineraClick
  end
  object Koloreak: TRadioGroup
    Left = 416
    Top = 120
    Width = 105
    Height = 105
    Cursor = crCross
    Hint = 'Sakatu hemen testuaren kolorea aldatzeko'
    Caption = 'Koloreak'
    Items.Strings = (
      'Gorria'
      'Berdea'
      'Urdina'
      'Zuria'
      'Beltza'
      'Horia')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = KoloreakClick
  end
end
