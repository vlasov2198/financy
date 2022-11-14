unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  Tauthor = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  author: Tauthor;

implementation

{$R *.dfm}

uses Unit1;

procedure Tauthor.Button1Click(Sender: TObject);
begin
author.hide;
home.show;
end;

procedure Tauthor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
home.close;
end;

end.
