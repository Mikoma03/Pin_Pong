unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ListBox1: TListBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation
uses
  Unit1;

{$R *.lfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
begin
  listbox1.items.savetofile('C:\Users\Praktikant\Desktop\Dimitri.Larkin\Pong\Speicher\daten1.txt');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  listbox1.items.loadfromfile('C:\Users\Praktikant\Desktop\Dimitri.Larkin\Pong\Speicher\daten1.txt');
end;

end.

