unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, KRModbusMaster, KRTimer,
  KRGoogleCommon, KRGoogleAPI, KRGoogleContacts, Vcl.Menus, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, KRVButton, ShellAPI;

type
  Thome = class(TForm)
    homemenu: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Image1: TImage;
    procedure N7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
home: Thome;
f:text;
s:string;
ball:integer;
sumball:integer;
Nvern:integer;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit6, Unit11;

procedure Thome.Button1Click(Sender: TObject);
begin
home.hide;
Form6.show;
end;

procedure Thome.Button2Click(Sender: TObject);
begin
    home.Hide;
    test.Free;
    Application.CreateForm(Ttest, test);
    test.Show;
    test.Caption := 'Тест по финасовой грамотности';
    test.Button1.Enabled:=True;
    AssignFile(f , ExtractFilePath(ParamStr(0))+ 'test.txt');
    reset(f);
    readln(f,s);
    ball:=0;
    sumball:=0;
    repeat
      if (s[1]='-') then
        begin
        delete(s,1,1);
        test.RadioGroup1.Caption:=s;
        end
      else
        if s[1]='*' then
        begin
        delete(s,1,1);
        Nvern:=StrToInt(s);
        end
      else
      test.RadioGroup1.Items.Add(s);
      readln(f,s);
      until (s[1]='-') or (Eof(f));
test.Timer1.Enabled:=True;
end;

procedure Thome.Button3Click(Sender: TObject);
begin
home.hide;
calc.show;
end;

procedure Thome.Button4Click(Sender: TObject);
begin
ShellExecute(0,Pchar('Open'),PChar('svravka.chm'),nil,nil,SW_SHOW);
end;

procedure Thome.N2Click(Sender: TObject);
begin
home.hide;
author.show;
end;

procedure Thome.N3Click(Sender: TObject);
begin
ShellExecute(0,Pchar('Open'),PChar('svravka.chm'),nil,nil,SW_SHOW);
end;

procedure Thome.N4Click(Sender: TObject);
begin
home.hide;
Form6.show;
end;

procedure Thome.N5Click(Sender: TObject);
begin
    home.Hide;
    test.Free;
    Application.CreateForm(Ttest, test);
    test.Show;
    test.Caption := 'Тест по финасовой грамотности';
    test.Button1.Enabled:=True;
    AssignFile(f , ExtractFilePath(ParamStr(0))+ 'test.txt');
    reset(f);
    readln(f,s);
    ball:=0;
    sumball:=0;
    repeat
      if (s[1]='-') then
        begin
        delete(s,1,1);
        test.RadioGroup1.Caption:=s;
        end
      else
        if s[1]='*' then
        begin
        delete(s,1,1);
        Nvern:=StrToInt(s);
        end
      else
      test.RadioGroup1.Items.Add(s);
      readln(f,s);
      until (s[1]='-') or (Eof(f));
test.Timer1.Enabled:=True;
end;

procedure Thome.N6Click(Sender: TObject);
begin
home.hide;
calc.show;
end;

procedure Thome.N7Click(Sender: TObject);
begin
home.close;
end;

end.
