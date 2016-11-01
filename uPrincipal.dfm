object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 511
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 24
    Top = 24
    Width = 289
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 319
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Add >>'
    TabOrder = 1
    OnClick = Action1Execute
  end
  object ListBox1: TListBox
    Left = 24
    Top = 64
    Width = 370
    Height = 417
    ItemHeight = 13
    TabOrder = 2
  end
  object ActionList1: TActionList
    Left = 336
    Top = 80
    object Action1: TAction
      Caption = 'Action1'
      OnExecute = Action1Execute
    end
  end
  object TetheringManager1: TTetheringManager
    Text = 'TetheringManager1'
    AllowedAdapters = 'Network'
    Left = 336
    Top = 136
  end
  object TetheringAppProfile1: TTetheringAppProfile
    Manager = TetheringManager1
    Text = 'TetheringAppProfile1'
    Group = 'MyGroup'
    Actions = <
      item
        Name = 'MyAction'
        IsPublic = True
        Action = Action1
        NotifyUpdates = False
      end>
    Resources = <>
    OnResourceReceived = TetheringAppProfile1ResourceReceived
    Left = 336
    Top = 192
  end
end
