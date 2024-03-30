program Plugin;

uses
  Vcl.Forms,
  UFrmUsoPlugin in 'UFrmUsoPlugin.pas' {MainForm},
  InterfaceVoz in 'InterfaceVoz.pas',
  HoraPlugin in 'HoraPlugin.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
