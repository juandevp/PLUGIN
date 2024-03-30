// Aquí declaramos la interfaz que deseamos que sean implementadas por las
// clases que hereden de ella
unit InterfaceVoz;

interface

type
  IVoz = interface
    // Este (GUID) global unico especifica un identificador de interfaz
    // con el fin de identificar nuestra interfaz en COM
    ['{D1706E7D-06E5-484C-AF59-F8C2906E7033}']
    procedure DecirHora;
  end;

implementation

end.
