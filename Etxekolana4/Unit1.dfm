object frmNagusia: TfrmNagusia
  Left = 202
  Top = 112
  Width = 714
  Height = 523
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Sendagilearen kontsulta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = itxi
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 32
    Width = 53
    Height = 13
    Caption = 'Gaixo NAN'
  end
  object Label2: TLabel
    Left = 48
    Top = 64
    Width = 73
    Height = 13
    Caption = 'Sendagile NAN'
  end
  object Label5: TLabel
    Left = 48
    Top = 144
    Width = 104
    Height = 13
    Caption = 'Kontsultaren emaitzak'
  end
  object txtGaixoNAN: TEdit
    Left = 136
    Top = 24
    Width = 113
    Height = 21
    Hint = 'Sartu gaixoaren NANa'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
  object txtSendagileNAN: TEdit
    Left = 136
    Top = 56
    Width = 113
    Height = 21
    Hint = 'Sartu sendagilearen NANa'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 488
    Top = 32
    Width = 129
    Height = 121
    Hint = 'Sartu bidali behar dizkiozun frogak'
    Caption = 'Frogak'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    object CheckBox1: TCheckBox
      Left = 16
      Top = 32
      Width = 105
      Height = 17
      Caption = 'Erradiografiak'
      TabOrder = 0
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 48
      Width = 105
      Height = 17
      Caption = 'ECG'
      TabOrder = 1
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 64
      Width = 105
      Height = 17
      Caption = 'Odol analisia'
      TabOrder = 2
    end
    object CheckBox4: TCheckBox
      Left = 16
      Top = 80
      Width = 105
      Height = 17
      Caption = 'Scanner'
      TabOrder = 3
    end
    object CheckBox5: TCheckBox
      Left = 16
      Top = 96
      Width = 105
      Height = 17
      Caption = 'Tentsioa'
      TabOrder = 4
    end
  end
  object GroupBox2: TGroupBox
    Left = 488
    Top = 176
    Width = 129
    Height = 153
    Hint = 'Sartu zein espezialistarengana bidali behar duzun'
    Caption = 'Espezialistak'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    object CheckBox6: TCheckBox
      Left = 16
      Top = 24
      Width = 89
      Height = 17
      Caption = 'Okulista'
      TabOrder = 0
    end
    object CheckBox7: TCheckBox
      Left = 16
      Top = 40
      Width = 89
      Height = 17
      Caption = 'Psikologoa'
      TabOrder = 1
    end
    object CheckBox8: TCheckBox
      Left = 16
      Top = 56
      Width = 89
      Height = 17
      Caption = 'Traumatologoa'
      TabOrder = 2
    end
    object CheckBox9: TCheckBox
      Left = 16
      Top = 72
      Width = 89
      Height = 17
      Caption = 'Urologoa'
      TabOrder = 3
    end
    object CheckBox10: TCheckBox
      Left = 16
      Top = 88
      Width = 89
      Height = 17
      Caption = 'Neurologoa'
      TabOrder = 4
    end
    object CheckBox11: TCheckBox
      Left = 16
      Top = 104
      Width = 89
      Height = 17
      Caption = 'Dermatologoa'
      TabOrder = 5
    end
    object CheckBox12: TCheckBox
      Left = 16
      Top = 120
      Width = 89
      Height = 17
      Caption = 'Ginekologoa'
      TabOrder = 6
    end
  end
  object GroupBox3: TGroupBox
    Left = 488
    Top = 344
    Width = 169
    Height = 137
    Hint = 
      'Kanpo espezialista batengana bidali behar baduzu, sartu espezial' +
      'itatea eta lekua'
    Caption = 'Kanpo espezialista'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    object Label3: TLabel
      Left = 8
      Top = 40
      Width = 65
      Height = 13
      Caption = 'Espezialitatea'
    end
    object Label4: TLabel
      Left = 8
      Top = 80
      Width = 30
      Height = 13
      Caption = 'Lekua'
    end
    object txtKanpoEspezialitatea: TEdit
      Left = 24
      Top = 56
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object cmBoxKanpoLekua: TComboBox
      Left = 24
      Top = 96
      Width = 129
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      Sorted = True
      TabOrder = 1
      Items.Strings = (
        'Basurtoko erietxea'
        'Donostia ospitalea'
        'Gurutzetako ospitalea'
        'Santiago ospitalea'
        'Txagorritxu ospitalea')
    end
    object CheckBox13: TCheckBox
      Left = 8
      Top = 16
      Width = 145
      Height = 17
      Caption = 'Kanpo espezialistarengana'
      TabOrder = 2
    end
  end
  object txtAreaEmaitzak: TMemo
    Left = 48
    Top = 168
    Width = 377
    Height = 233
    Hint = 'Sartu hemen kontsultaren emaitzak'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
  end
  object cmdErrezetakBete: TButton
    Left = 320
    Top = 128
    Width = 105
    Height = 33
    Hint = 'Sartu hemen errezetak sartzeko'
    Caption = 'Errezetak bete'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
    OnClick = cmdErrezetakBeteClick
  end
  object cmdGorde: TButton
    Left = 48
    Top = 424
    Width = 97
    Height = 33
    Hint = 'Sakatu hemen, emaitzak fitxategi baten gordetzeko'
    Caption = 'Gorde'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnClick = cmdGordeClick
  end
  object cmdBolanteak: TButton
    Left = 176
    Top = 424
    Width = 121
    Height = 33
    Hint = 
      'Sakatu hemen espezialistengana joateko eta probak egiteko bolant' +
      'eak fitxategi baten inprimatzeko'
    Caption = 'Bolanteak inprimatu'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = cmdBolanteakClick
  end
  object cmdBesteGaixo: TButton
    Left = 328
    Top = 424
    Width = 97
    Height = 33
    Hint = 'Sakatu hemen beste gaixo baten kontsultaren emaitzak sartzeko'
    Caption = 'Beste gaixo bat'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnClick = cmdBesteGaixoClick
  end
end
