object Form1: TForm1
  Left = 402
  Top = 70
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 32
    Width = 46
    Height = 13
    Caption = #1044#1080#1072#1084#1077#1090#1088
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 60
    Height = 13
    Caption = #1061#1086#1076' '#1087#1086#1088#1096#1085#1103
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 96
    Height = 13
    Caption = #1063#1072#1089#1090#1086#1090#1072' '#1074#1088#1072#1097#1077#1085#1080#1103
  end
  object Label4: TLabel
    Left = 16
    Top = 128
    Width = 125
    Height = 13
    Caption = #1059#1075#1086#1083' '#1085#1072#1095#1072#1083#1072' '#1076#1080#1072#1075#1088#1072#1084#1084#1099
  end
  object Label5: TLabel
    Left = 16
    Top = 160
    Width = 82
    Height = 13
    Caption = #1064#1072#1075' '#1076#1080#1072#1075#1088#1072#1084#1084#1099
  end
  object Label6: TLabel
    Left = 16
    Top = 192
    Width = 89
    Height = 13
    Caption = #1055#1086#1089#1090#1086#1103#1085#1085#1072#1103' '#1050#1064#1052
  end
  object Edit1: TEdit
    Left = 72
    Top = 24
    Width = 73
    Height = 21
    TabOrder = 0
    Text = '0,24'
  end
  object Edit2: TEdit
    Left = 80
    Top = 56
    Width = 73
    Height = 21
    TabOrder = 1
    Text = '0,36'
  end
  object Button1: TButton
    Left = 24
    Top = 232
    Width = 73
    Height = 33
    Caption = #1056#1072#1089#1095#1077#1090
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit3: TEdit
    Left = 120
    Top = 88
    Width = 73
    Height = 21
    TabOrder = 3
    Text = '800'
  end
  object Edit4: TEdit
    Left = 144
    Top = 120
    Width = 73
    Height = 21
    TabOrder = 4
    Text = '540'
  end
  object Edit5: TEdit
    Left = 112
    Top = 152
    Width = 73
    Height = 21
    TabOrder = 5
    Text = '0,5'
  end
  object Edit6: TEdit
    Left = 112
    Top = 184
    Width = 73
    Height = 21
    TabOrder = 6
    Text = '0,3'
  end
  object Chart1: TChart
    Left = 264
    Top = 16
    Width = 625
    Height = 401
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      #1044#1080#1085#1072#1084#1080#1095#1077#1089#1082#1080#1081' '#1088#1072#1089#1095#1077#1090' '#1076#1074#1080#1075#1072#1090#1077#1083#1103)
    Legend.ColorWidth = 65
    Legend.Font.Charset = DEFAULT_CHARSET
    Legend.Font.Color = clBlack
    Legend.Font.Height = -13
    Legend.Font.Name = 'Arial'
    Legend.Font.Style = []
    Legend.ShadowSize = 0
    Legend.TextStyle = ltsPlain
    Legend.TopPos = 9
    View3D = False
    TabOrder = 7
    object Series1: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clRed
      Title = 'Pg'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clGreen
      Title = 'Pj'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = 4259584
      Title = 'Pr'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
    object Series4: TLineSeries
      Marks.ArrowLength = 8
      Marks.Visible = False
      SeriesColor = clBlue
      Title = 'Pk'
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.DateTime = False
      XValues.Name = 'X'
      XValues.Multiplier = 1.000000000000000000
      XValues.Order = loAscending
      YValues.DateTime = False
      YValues.Name = 'Y'
      YValues.Multiplier = 1.000000000000000000
      YValues.Order = loNone
    end
  end
  object Button2: TButton
    Left = 128
    Top = 232
    Width = 105
    Height = 33
    Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1100' '#1075#1088#1072#1092#1080#1082
    TabOrder = 8
    OnClick = Button2Click
  end
end
