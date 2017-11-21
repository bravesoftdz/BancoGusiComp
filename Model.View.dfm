object frm_modelo: Tfrm_modelo
  Left = 0
  Top = 0
  Caption = 'Modelo de Layout'
  ClientHeight = 596
  ClientWidth = 641
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 641
    Height = 57
    Align = alTop
    Caption = 'Cadastro de Clientes'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 599
  end
  object Panel3: TPanel
    Left = 0
    Top = 65
    Width = 641
    Height = 531
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 55
    ExplicitWidth = 599
    ExplicitHeight = 495
    object Label1: TLabel
      Left = 48
      Top = 30
      Width = 35
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 42
      Top = 87
      Width = 73
      Height = 16
      Caption = 'Sobrenome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 42
      Top = 144
      Width = 55
      Height = 16
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 307
      Top = 87
      Width = 43
      Height = 16
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 307
      Top = 30
      Width = 60
      Height = 16
      Caption = 'Endereco'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 48
      Top = 320
      Width = 441
      Height = 120
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Button1: TButton
      Left = 64
      Top = 446
      Width = 75
      Height = 25
      Caption = 'Primeiro'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 177
      Top = 446
      Width = 75
      Height = 25
      Caption = 'Ultimo'
      TabOrder = 2
    end
    object Button3: TButton
      Left = 282
      Top = 446
      Width = 75
      Height = 25
      Caption = 'Seguinte'
      TabOrder = 3
    end
    object Button4: TButton
      Left = 387
      Top = 446
      Width = 75
      Height = 25
      Caption = 'Anterior'
      TabOrder = 4
    end
    object Edit5: TEdit
      Left = 307
      Top = 52
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 307
      Top = 109
      Width = 145
      Height = 21
      TabOrder = 6
    end
  end
  object Button6: TButton
    Left = 414
    Top = 217
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 2
  end
  object Button7: TButton
    Left = 495
    Top = 385
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
  end
  object Button8: TButton
    Left = 495
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Editar'
    TabOrder = 4
  end
  object Button9: TButton
    Left = 48
    Top = 318
    Width = 75
    Height = 25
    Caption = 'Inserir'
    TabOrder = 5
  end
  object Button10: TButton
    Left = 307
    Top = 217
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 6
  end
  object Edit1: TEdit
    Left = 48
    Top = 117
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Edit2: TEdit
    Left = 48
    Top = 174
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object Edit3: TEdit
    Left = 48
    Top = 231
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object Button11: TButton
    Left = 475
    Top = 172
    Width = 95
    Height = 25
    Caption = 'Cadastrar Cidade'
    TabOrder = 10
  end
  object Panel4: TPanel
    Left = 0
    Top = 57
    Width = 641
    Height = 8
    Align = alTop
    Color = clMaroon
    ParentBackground = False
    TabOrder = 11
    ExplicitTop = 43
    ExplicitWidth = 599
  end
end
