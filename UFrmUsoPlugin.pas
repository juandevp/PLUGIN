/// Aquí hacemos uso del objeto com que creamos

unit UFrmusoPlugin;

interface

// Se declara las librerias que va a hacer uso la aplicación
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, InterfaceVoz;

type
  TMainForm = class(TForm)
    BtnHora: TButton;
    // Botón
    procedure BtnHoraClick(Sender: TObject);
    // Evento que se dispara a darle clic al Botón "BtnHora"
  private
    FTiempoVoz: IVoz;
    // Variable para manipular el objeto COM
  public
    constructor Create(AOwner: TComponent); override;
  end;

var
  MainForm: TMainForm;

implementation

uses
  Horaplugin;

{$R *.dfm}

constructor TMainForm.Create(AOwner: TComponent);
begin
  inherited;

  /// Creamos su instancia
  FTiempoVoz := THoraPlugin.Create;
end;

procedure TMainForm.BtnHoraClick(Sender: TObject);
begin
  // Ejecutamos el metodo decir hora
  FTiempoVoz.DecirHora;
end;

end.
