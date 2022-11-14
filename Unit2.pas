unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.Buttons, Vcl.Imaging.pngimage;

type
  Tcalc = class(TForm)
    input_amount: TLabeledEdit;
    input_period: TLabeledEdit;
    amount: TLabeledEdit;
    deferred_amount: TLabeledEdit;
    print: TLabeledEdit;
    calculate: TButton;
    back: TButton;
    clear: TButton;
    clear1: TButton;
    clear2: TButton;
    clear3: TButton;
    clear4: TButton;
    clear5: TButton;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure input_amountKeyPress(Sender: TObject; var Key: Char);
    procedure amountKeyPress(Sender: TObject; var Key: Char);
    procedure input_periodKeyPress(Sender: TObject; var Key: Char);
    procedure deferred_amountKeyPress(Sender: TObject; var Key: Char);
    procedure printKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure backClick(Sender: TObject);
    procedure clearClick(Sender: TObject);
    procedure clear1Click(Sender: TObject);
    procedure clear2Click(Sender: TObject);
    procedure clear3Click(Sender: TObject);
    procedure clear4Click(Sender: TObject);
    procedure clear5Click(Sender: TObject);
    procedure calculateClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  calc: Tcalc;
  summ:Single;
  print1:Single;
  period1:Single;
  amount1:Single;
  deferred_amount1:Single;
  itog:Single;
  inputamount1:Single;

implementation

{$R *.dfm}

uses Unit1;

procedure Tcalc.amountKeyPress(Sender: TObject; var Key: Char);
var k:integer;
begin
if amount.Text='0' then
  if not(key in ['.',#8]) then key:=#0;
if key in['0'..'9','.',#8] then
  begin
  if key='.' then
    begin
    if amount.Text='' then key:=#0;
      For k:=1 to Length(amount.Text) do
      begin
      if amount.Text[k]=',' then key:=#0;
      end;
    end;
  end else key:=#0;
end;

procedure Tcalc.BitBtn1Click(Sender: TObject);
begin
calc.hide;
home.show;
end;

procedure Tcalc.calculateClick(Sender: TObject);
begin
print.Clear;
summ:=strtofloat(input_amount.Text)-strtofloat(amount.Text);
inputamount1:=strtofloat(input_amount.Text);
amount1:=strtofloat(amount.Text);
period1:=strtofloat(input_period.Text);
deferred_amount1:=strtofloat(deferred_amount.Text);
while (amount1<inputamount1) and (period1 <> 0) do
begin
amount1:=deferred_amount1+amount1;
period1:=period1-1;
end;
print.Text:=floattostr(amount1)
end;


procedure Tcalc.clear1Click(Sender: TObject);
begin
input_amount.Clear;
end;

procedure Tcalc.clear2Click(Sender: TObject);
begin
amount.Clear;
end;

procedure Tcalc.clear3Click(Sender: TObject);
begin
input_period.Clear;
end;

procedure Tcalc.clear4Click(Sender: TObject);
begin
deferred_amount.Clear;
end;

procedure Tcalc.clear5Click(Sender: TObject);
begin
print.Clear;
end;

procedure Tcalc.clearClick(Sender: TObject);
begin
input_amount.Clear;
input_period.Clear;
amount.Clear;
deferred_amount.Clear;
print.Clear;
end;

procedure Tcalc.backClick(Sender: TObject);
begin
calc.hide;
home.show;
end;

procedure Tcalc.deferred_amountKeyPress(Sender: TObject; var Key: Char);
var k:integer;
begin
if deferred_amount.Text='0' then
if not(key in ['.',#8]) then key:=#0;
if key in['0'..'9','.',#8] then
  begin
  if key='.' then
    begin
    if deferred_amount.Text='' then key:=#0;
      For k:=1 to Length(deferred_amount.Text) do
      begin
      if deferred_amount.Text[k]=',' then key:=#0;
      end;
    end;
  end else key:=#0;
end;


procedure Tcalc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
home.Close;
end;

procedure Tcalc.FormCreate(Sender: TObject);
begin
deferred_amount.MaxLength := 10;
input_period.MaxLength := 10;
print.MaxLength := 10;
input_amount.MaxLength := 10;
amount.MaxLength := 10;
end;



procedure Tcalc.input_amountKeyPress(Sender: TObject; var Key: Char);
var k:integer;
begin
if input_amount.Text='0' then
  if not(key in ['.',#8]) then key:=#0;
if key in['0'..'9','.',#8] then
  begin
  if key='.' then
    begin
    if input_amount.Text='' then key:=#0;
      For k:=1 to Length(input_amount.Text) do
      begin
      if input_amount.Text[k]=',' then key:=#0;
      end;
    end;
  end else key:=#0;
end;


procedure Tcalc.input_periodKeyPress(Sender: TObject; var Key: Char);
var k:integer;
begin
if input_period.Text='0' then
  if not(key in ['.',#8]) then key:=#0;
if key in['0'..'9','.',#8] then
  begin
  if key='.' then
    begin
    if input_period.Text='' then key:=#0;
      For k:=1 to Length(input_period.Text) do
      begin
      if input_period.Text[k]=',' then key:=#0;
      end;
    end;
  end else key:=#0;
end;

procedure Tcalc.printKeyPress(Sender: TObject; var Key: Char);
var k:integer;
begin
if print.Text='0' then
  if not(key in ['.',#8]) then key:=#0;
if key in['0'..'9','.',#8] then
  begin
  if key='.' then
    begin
    if print.Text='' then key:=#0;
      For k:=1 to Length(print.Text) do
      begin
      if print.Text[k]=',' then key:=#0;
      end;
    end;
  end else key:=#0;
end;

end.
