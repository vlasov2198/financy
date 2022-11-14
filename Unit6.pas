unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtrls, SHDocVw, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TForm6 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1, Unit3, Unit10, Unit7, Unit8, Unit9;

procedure TForm6.Button1Click(Sender: TObject);
begin
if RadioButton1.Checked then
begin
  form6.hide;
  theory1.show;
end;
if RadioButton2.Checked then
begin
  form6.hide;
  theory2.show;
end;
if RadioButton3.Checked then
begin
  form6.hide;
  theory3.show;
end;
if RadioButton4.Checked then
begin
  form6.hide;
  theory4.show;
end;

end;

procedure TForm6.Button2Click(Sender: TObject);
begin
    form6.Hide;
    test.Free;
    Application.CreateForm(Ttest, test);
    test.Show;
    test.Caption := '“ест по финасовой грамотности';
    test.Button1.Enabled:=True;
    AssignFile(f , ExtractFilePath(ParamStr(0))+ 'test.txt');
    reset(f); // ќткрываем файл дл€ чтени€
    readln(f,s); // —читываем первую строку из файла
    ball:=0;
    sumball:=0;
    repeat
      if (s[1]='-') then
        begin // ≈сли первый символ строки С-С значит это вопрос
        delete(s,1,1);
        test.RadioGroup1.Caption:=s;
        end
      else
        if s[1]='*' then
        begin // ≈сли перв символ С*Т значит это номер верного ответа
        delete(s,1,1);
        Nvern:=StrToInt(s);
        end
      else
      test.RadioGroup1.Items.Add(s); // »наче это вариант ответа
      readln(f,s); // —читываем следующую строку из файла
      until (s[1]='-') or (Eof(f));

test.Timer1.Enabled:=True;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
form6.hide;
home.show;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
home.Close;
end;

end.
