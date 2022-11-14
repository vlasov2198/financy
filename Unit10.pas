unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.MPlayer, WMPLib_TLB;

type
  Ttheory4 = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    WindowsMediaPlayer1: TWindowsMediaPlayer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  theory4: Ttheory4;

implementation

{$R *.dfm}

uses Unit6, Unit1, Unit3, Unit9;

procedure Ttheory4.Button1Click(Sender: TObject);
begin
theory4.hide;
home.show;
end;

procedure Ttheory4.Button2Click(Sender: TObject);
begin
theory4.hide;
form6.show;
end;

procedure Ttheory4.Button3Click(Sender: TObject);
begin
theory4.hide;
theory3.show;
end;

procedure Ttheory4.Button4Click(Sender: TObject);
begin
    theory4.Hide;
    test.Free;
    Application.CreateForm(Ttest, test);
    test.Show;
    test.Caption := 'Тест по финасовой грамотности';
    test.Button1.Enabled:=True;
    AssignFile(f , ExtractFilePath(ParamStr(0))+ 'test.txt');
    reset(f); // Открываем файл для чтения
    readln(f,s); // Считываем первую строку из файла
    ball:=0;
    sumball:=0;
    repeat
      if (s[1]='-') then
        begin // Если первый символ строки ‘-‘ значит это вопрос
        delete(s,1,1);
        test.RadioGroup1.Caption:=s;
        end
      else
        if s[1]='*' then
        begin // Если перв символ ‘*’ значит это номер верного ответа
        delete(s,1,1);
        Nvern:=StrToInt(s);
        end
      else
      test.RadioGroup1.Items.Add(s); // Иначе это вариант ответа
      readln(f,s); // Считываем следующую строку из файла
      until (s[1]='-') or (Eof(f));

test.Timer1.Enabled:=True;
end;

procedure Ttheory4.Button5Click(Sender: TObject);
begin
WindowsMediaPlayer1.Controls.play;
end;

procedure Ttheory4.Button6Click(Sender: TObject);
begin
WindowsMediaPlayer1.controls.pause;
end;

procedure Ttheory4.Button7Click(Sender: TObject);
begin
WindowsMediaPlayer1.controls.stop;
end;

procedure Ttheory4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
home.close;
end;

procedure Ttheory4.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(ExtractFilePath(ParamStr(0))+ 'Теория4.htm');
end;



procedure Ttheory4.FormHide(Sender: TObject);
begin
WindowsMediaPlayer1.controls.stop;
end;

end.
