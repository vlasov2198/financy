unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls, KRProgressBar, KRTimer;

type
  Ttest = class(TForm)
    RadioGroup1: TRadioGroup;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    KRProgressBar1: TKRProgressBar;
    Label2: TLabel;
    Label3: TLabel;
    Timer1: TTimer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  test: Ttest;
  TimerTime:integer;

implementation

{$R *.dfm}

uses Unit1, Unit2;

procedure Ttest.Button1Click(Sender: TObject);
begin
if (RadioGroup1.ItemIndex>-1) and (not Eof(f)) then
  begin
    if RadioGroup1.ItemIndex = Nvern-1 then
      begin
      {Label1.Caption := 'Правильно!';}
      RadioGroup1.Items.Clear;
      inc(ball);
      end
    else
       {Label1.Caption := 'Не правильно!';}
       RadioGroup1.Items.Clear;
       KRProgressBar1.Position:=KRProgressBar1.Position+10;
       inc(sumball);
  Repeat
    if (s[1]='-') then
    begin
      delete(s,1,1);
      RadioGroup1.Caption:=s;
    end
    else
    if s[1]='*' then
    begin
      delete(s,1,1);
      Nvern:=StrToInt(s);
    end
    else
    RadioGroup1.Items.Add(s);
    readln(f,s);
  until (s[1]='-') or (Eof(f));
  end
  Else if Eof(f) then
  if (RadioGroup1.ItemIndex>-1) then
  begin
    delete(s,1,1);
    Nvern:=StrToInt(s);
    KRProgressBar1.Position:=KRProgressBar1.Position+50;
    if RadioGroup1.ItemIndex = Nvern-1 then
    ball:=ball+1;
    inc(sumball);
    CloseFile(f);
    Button1.Enabled:= False;
end;
begin
if KRProgressBar1.Position = 100 then
begin
Label3.Visible:=False;
TimerTime:=0;
Application.Title := 'Результат';
if MessageDlg('Ваше количество баллов ' + IntToStr(ball) + ' из ' + IntToStr(sumball) + ' возможных.', mtCustom, [mbOK], 0) = mrOK then
home.Show;
test.Hide;
end;
end;
end;


procedure Ttest.Button2Click(Sender: TObject);
begin
TimerTime:=0;
test.hide;
home.show;
end;

procedure Ttest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
home.close;
end;


procedure Ttest.FormCreate(Sender: TObject);
begin
Timer1.Enabled:=False;
TimerTime:=400;
Label3.Caption:='Осталось: '+ inttostr(TimerTime) + ' c.';
end;

procedure Ttest.Timer1Timer(Sender: TObject);
begin
dec(TimerTime);
label3.Caption:='Осталось: ' + IntToStr(TimerTime)+ ' c.';
if TimerTime=0 then
begin
Timer1.Enabled:=False;
Label3.Visible:=False;
Application.Title := 'Результат';
if MessageDlg('Вы не успели пройти тест, но ваше количество баллов: ' + IntToStr(ball), mtCustom, [mbOK], 0) = mrOK then
home.Show;
test.Hide;
end;
end;

end.
