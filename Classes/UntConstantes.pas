unit UntConstantes;

interface

uses
  UntTipos;

const
  ServidorDateTime : Array [TServidorDateTime] of String = (
                              'time.windows.com', 'pool.ntp.br', 'time.cloudflare.com',
                              'gps.jd.ntp.br', 'a.st1.ntp.br', 'c.st1.ntp.br', 'd.st1.ntp.br',
                              'a.ntp.br', 'b.ntp.br', 'c.ntp.br', 'gps.ntp.br');

implementation

end.
