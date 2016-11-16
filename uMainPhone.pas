unit uMainPhone;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, IPPeerClient,
  IPPeerServer, FMX.Edit, System.Tether.Manager, System.Tether.AppProfile,
  FMX.StdCtrls, FMX.Controls.Presentation;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ToolBar1: TToolBar;
    Label1: TLabel;
    TetheringManager1: TTetheringManager;
    TetheringAppProfile1: TTetheringAppProfile;
    edtRemote: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure TetheringManager1EndAutoConnect(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}

procedure TForm2.Button1Click(Sender: TObject);
begin
  TetheringManager1.AutoConnect;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  TetheringAppProfile1.SendString(TetheringManager1.RemoteProfiles.First,
    'MyText', edtRemote.Text);
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  TetheringAppProfile1.RunRemoteAction(TetheringManager1.RemoteProfiles.First,
    'MyAction');
end;

procedure TForm2.TetheringManager1EndAutoConnect(Sender: TObject);
begin
  TetheringAppProfile1.Connect(TetheringManager1.RemoteProfiles.First);
  Button2.Enabled := True;
  Button3.Enabled := True;
end;

end.
