// Aquí implementamos la interfaz que expone el metodo "DecirHora"
unit HoraPlugin;

interface

// Se declara las librerias que va a hacer uso la aplicación
uses
  InterfaceVoz, ComObj, SysUtils;

// Extendemos de la interfaz para su uso Ivoz
type
  THoraPlugin = class(TInterfacedObject, Ivoz)
    // Creamos la clase que va a tener los objetos a manipular y cmo podemos ver
    // extiende de "TInterfacedObject, Ivoz"
  public
    // Procedimiento heredado de la interfaz creada
    procedure DecirHora;
  end;

implementation

procedure THoraPlugin.DecirHora;
var
  SpVoice: Variant;
begin
  // El objeto SpVoice aporta las capacidades del motor de texto a voz
  // (TTS) a aplicaciones que utilizan la automatización SAPI.
  SpVoice := CreateOleObject('SAPI.SpVoice');
  // Le pasamos como parametro a "Speak" el texto que queramos que diga en voz alta
  SpVoice.Speak('La hora actual es ' + FormatDateTime('hh:mm:ss AM/PM',
    Now), 0);
end;

end.
