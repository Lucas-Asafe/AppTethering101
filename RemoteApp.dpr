program RemoteApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  uMainPhone in 'uMainPhone.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
