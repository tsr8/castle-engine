unit VrmlConsoleF;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TVrmlConsole }

  TVrmlConsole = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private

  public
    WasWarnings: boolean;
  end; 

var
  VrmlConsole: TVrmlConsole;

procedure VRMLNonFatalError_VrmlConsole(const S: string);

implementation

uses MainF;

procedure VRMLNonFatalError_VrmlConsole(const S: string);
begin
  VrmlConsole.Memo1.Lines.Append(S);
  VrmlConsole.WasWarnings := true;
end;

{ TVrmlConsole }

procedure TVrmlConsole.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TVrmlConsole.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  Main.MenuShowVrmlConsole.Checked := false;
end;

initialization
  {$I vrmlconsolef.lrs}

end.

