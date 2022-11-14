unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls,
  Vcl.MPlayer, WMPLib_TLB;

type
  Ttheory3 = class(TForm)
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
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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
  theory3: Ttheory3;

implementation

{$R *.dfm}

uses Unit6, Unit1, Unit10, Unit8;

procedure Ttheory3.Button1Click(Sender: TObject);
begin
theory3.hide;
home.show;
end;

procedure Ttheory3.Button2Click(Sender: TObject);
begin
theory3.hide;
form6.show;
end;

procedure Ttheory3.Button3Click(Sender: TObject);
begin
theory3.hide;
theory4.show;
end;

procedure Ttheory3.Button4Click(Sender: TObject);
begin
theory3.hide;
theory2.show;
end;

procedure Ttheory3.Button5Click(Sender: TObject);
begin
WindowsMediaPlayer1.Controls.play;
end;

procedure Ttheory3.Button6Click(Sender: TObject);
begin
WindowsMediaPlayer1.controls.pause;
end;

procedure Ttheory3.Button7Click(Sender: TObject);
begin
WindowsMediaPlayer1.controls.stop;
end;

procedure Ttheory3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
home.close;
end;

procedure Ttheory3.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(ExtractFilePath(ParamStr(0))+ 'Теория3.htm');
end;

procedure Ttheory3.FormHide(Sender: TObject);
begin
WindowsMediaPlayer1.controls.stop;
end;

end.
