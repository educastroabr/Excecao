program Excecao;

uses
  Vcl.Forms,
  UntFrmPrincipal in '..\Furmularios\UntFrmPrincipal.pas' {Form1},
  UntExcecao in '..\Classes\UntExcecao.pas',
  UntCustomExcecao in '..\Classes\UntCustomExcecao.pas',
  UntDialogMessage in '..\Classes\UntDialogMessage.pas',
  UntUtil in '..\Classes\UntUtil.pas',
  UntConstantes in '..\Classes\UntConstantes.pas',
  UntTipos in '..\Classes\UntTipos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
