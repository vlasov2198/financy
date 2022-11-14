unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.MPlayer, WMPLib_TLB;

type
  Ttheory1 = class(TForm)
    WebBrowser1: TWebBrowser;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    WindowsMediaPlayer1: TWindowsMediaPlayer;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  theory1: Ttheory1;

implementation

{$R *.dfm}

uses Unit6, Unit1, Unit8;

procedure Ttheory1.Button1Click(Sender: TObject);
begin
theory1.hide;
home.show;
end;

procedure Ttheory1.Button2Click(Sender: TObject);
begin
theory1.hide;
theory2.show;
end;

procedure Ttheory1.Button3Click(Sender: TObject);
begin
theory1.hide;
form6.show;
end;

procedure Ttheory1.Button4Click(Sender: TObject);
begin
WindowsMediaPlayer1.Controls.play;
end;

procedure Ttheory1.Button5Click(Sender: TObject);
begin
WindowsMediaPlayer1.controls.pause;
end;

procedure Ttheory1.Button6Click(Sender: TObject);
begin
WindowsMediaPlayer1.controls.stop;
end;

procedure Ttheory1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
home.close;
end;

procedure Ttheory1.FormCreate(Sender: TObject);
begin
WebBrowser1.Navigate(ExtractFilePath(ParamStr(0))+ 'Теория1.htm');
end;



procedure Ttheory1.FormHide(Sender: TObject);
begin
WindowsMediaPlayer1.controls.stop;
end;


end.
