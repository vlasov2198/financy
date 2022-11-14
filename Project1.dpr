program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {home},
  Unit2 in 'Unit2.pas' {calc},
  Unit3 in 'Unit3.pas' {Test},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6},
  Vcl.Themes,
  Vcl.Styles,
  Unit7 in 'Unit7.pas' {theory1},
  Unit8 in 'Unit8.pas' {theory2},
  Unit9 in 'Unit9.pas' {theory3},
  Unit10 in 'Unit10.pas' {theory4},
  Unit11 in 'Unit11.pas' {author};

{$R *.res}

begin
  Application.Initialize;
  Form5 := TForm5.Create(Application);
  Form5.show;
  Form5.Update;
  while Form5.Timer1.Enabled do
  Application.ProcessMessages;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10');
  Application.CreateForm(Thome, home);
  Application.CreateForm(Tcalc, calc);
  Application.CreateForm(TTest, Test);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(Ttheory1, theory1);
  Application.CreateForm(Ttheory2, theory2);
  Application.CreateForm(Ttheory3, theory3);
  Application.CreateForm(Ttheory4, theory4);
  Application.CreateForm(Tauthor, author);
  Form5.Hide;
  Form5.Free;
  Application.Run;
end.
