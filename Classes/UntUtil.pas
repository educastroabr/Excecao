unit UntUtil;

interface

uses
  UntTipos;


  /// <summary> Função para retornar valor verdadeiro ou falso de acordo com a condição </summary>
  function  iif(Condicao: Boolean; Verdadeiro, Falso: Variant): Variant;
  /// <summary> Função para retornar Data e Hora padrão </summary>
  function DataHora: TDateTime; overload;
  /// <summary> Função para retornar Data e Hora Web </summary>
  function DataHora(PServidorDateTime: TServidorDateTime): TDateTime; overload;
  /// <summary> Função para retornar o diretório </summary>
  function Diretorio(PDiretorio: TDiretorio = drExecutavel; PPasta: String = ''): String;

implementation

uses
  System.SysUtils, Vcl.Forms, IdSNTP, UntConstantes;

function iif(Condicao: Boolean; Verdadeiro, Falso: Variant): Variant;
begin
  if Condicao then
    Result := Verdadeiro
  else
    Result := Falso;
end;

function DataHora: TDateTime;
begin
  Result := DataHora(stWindows);
end;

function DataHora(PServidorDateTime: TServidorDateTime): TDateTime;
Var
  SNTP: TIdSNTP;
begin
  try
    SNTP := TIdSNTP.Create(Nil);
    try
      SNTP.Host   := ServidorDateTime[PServidorDateTime];
      SNTP.Active := True;
      Result      := SNTP.DateTime;
    except
      Result := Now;
    end;
  finally
    SNTP.Disconnect;
    FreeAndNil(SNTP);
  end;
end;

function Diretorio(PDiretorio: TDiretorio; PPasta: String): String;
var
  sPasta: String;
begin
  sPasta := PPasta;
  Result := EmptyStr;
  case PDiretorio of
    drLog: Result := ExtractFilePath(Application.ExeName) +
                     iif(Copy(ExtractFilePath(Application.ExeName),
                              Length(ExtractFilePath(Application.ExeName)), 1) = '\',
                              EmptyStr, '\') + 'Log\';
    drPadrao:
    begin
      if Trim(sPasta) = EmptyStr then
        sPasta := ExtractFilePath(Application.ExeName);
      Result := sPasta;
    end;
    drTemporario:
      begin
        if DirectoryExists(GetEnvironmentVariable('tmp')) = True then
          Result := GetEnvironmentVariable('TMP')
        else if DirectoryExists(GetEnvironmentVariable('temp')) = True then
          Result := GetEnvironmentVariable('TEMP')
        else
          Result := GetEnvironmentVariable('USERPROFILE');
      end;
    drExecutavel: Result := ExtractFilePath(Application.ExeName);
  end;
  Result := Result + iif(Copy(Result, Length(Result), 1) = '\', EmptyStr, '\') +
            iif(Trim(sPasta) = EmptyStr, EmptyStr,
                Trim(sPasta) + iif(Copy(Trim(sPasta), Length(Trim(sPasta)), 1) = '\', EmptyStr, '\'));
  if not DirectoryExists(Result) then
    ForceDirectories(Result);
end;

end.
