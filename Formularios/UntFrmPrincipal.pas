unit UntFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons;

type
  TForm1 = class(TForm)
    btnExcecao: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnExcecaoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  System.DateUtils, UntDialogMessage, UntExcecao;

procedure TForm1.btnExcecaoClick(Sender: TObject);
begin
  ShowMessageDialog(IntToStr(StrToInt('a')));
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  try
    ShowMessageDialog(DateToStr(StrToDate('X')));
  except
    on E : Exception do
      EExcecao.Excecao(Self, E);
  end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
