unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Unit2,
  Unit3, Dialogs, ExtCtrls,
  StdCtrls, Menus, LCLType;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Ball: TShape;
    Panel4: TPanel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    x: integer;
    i: integer;
    summe1,summe2:integer;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.FormKeyDown(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if panel1.top > 16 then
  begin
    if key = VK_W then
      panel1.top := panel1.top - 50;
  end;
  if panel1.top <= 16 then
  begin
    if key = VK_W then
      panel1.top := panel1.top - 0;
  end;
  if panel1.top < 552 then
  begin
    if key = VK_S then
      panel1.top := panel1.top + 50;
  end;
  if panel1.top >= 552 then
  begin
    if key = VK_S then
      panel1.top := panel1.top + 0;
  end;

  if panel2.top > 16 then
    if key = VK_UP then
      panel2.top := panel2.top - 50;

  if panel2.top <= 16 then
  begin
    if key = VK_UP then
      panel2.top := panel2.top - 0;
  end;
  if panel2.top < 552 then
  begin
    if key = VK_DOWN then
      panel2.top := panel2.top + 50;
  end;
  if panel2.top >= 552 then
  begin
    if key = VK_DOWN then
      panel2.top := panel2.top + 0;
  end;
  if key = VK_ESCAPE  then
  begin
    label17.Visible := True;
    button1.Visible := True;
    timer1.Enabled := False;
  end;

end;


procedure TForm1.Button1Click(Sender: TObject);
begin
  label17.Visible := False;
  button1.Visible := False;
  timer1.Enabled := True;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  x:=10;
  i:=10;
  summe1:=0;
  summe2:=0;
end;


procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  Label2.Caption := '0';
  Label3.Caption := '0';
  panel1.Top := 272;
  panel2.top := 272;
  ball.Top := 272;
  ball.left := 552;
  ShowMessage('Es wurde neue Spiel hergestellt');
  ShowMessage('Drück "OK", wenn du fertig bist');
  timer1.Enabled := True;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  Form2.ShowModal;

end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  form3.ShowModal;

end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
  if ball.BoundsRect.IntersectsWith(panel2.BoundsRect) then
  begin
    x := -10;
  end;
  if ball.BoundsRect.IntersectsWith(panel1.BoundsRect) then
  begin
    x := 10;
  end;
  if ball.BoundsRect.IntersectsWith(panel3.BoundsRect) then
  begin

    i:= -10;
  end;
  if ball.BoundsRect.IntersectsWith(panel4.BoundsRect) then
  begin

    i := +10;
  end;

  ball.left := ball.left + x;
  ball.top:=ball.top + i;

  if ball.left >= 1176 then
  begin
  summe2:=summe2+1;
  label2.caption:=' ' + summe2.toString;
  timer1.enabled:=false;
  ball.Top:=272;
  ball.left:=552;
  timer1.enabled:=true;
  end;
  if ball.left <= 0 then
  begin
  summe1:=summe1+1;
  label3.caption:=' ' + summe1.toString;
  timer1.enabled:=false;
  ball.Top:=272;
  ball.left:=552;
  timer1.enabled:=true;
  end;

end;


end.


