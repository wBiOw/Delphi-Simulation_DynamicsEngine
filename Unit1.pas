unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, math, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
Pd,Pn,Pj,Pr,Pk,f,Pg: array [1..10000]of real;
input: TextFile;
firas,b,H,d,r,Mpor,Mwat,Fpor,mob,Pt,n,w,fi,lw,Hx,Vx,ax,dfi,fin:real;
i,k:integer;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

D:=Strtofloat(Edit1.Text);
H:=Strtofloat(Edit2.Text);
n:=Strtofloat(Edit3.Text);
fin:=Strtofloat(Edit4.Text);
dfi:=Strtofloat(Edit5.Text);
lw:=Strtofloat(Edit6.Text);
fi:=fin;
   AssignFile(input,'Pg.txt');
  Reset(input);
  i:=0;
  while not EOF(input) do
  begin
  inc(i);
  ReadLn(input,Pg[i]);
  Pg[i]:=Pg[i]*1000000;
  k:=i;
  end;{while}
  CloseFile(input);
R:=H/2;
//Mpor:=4000*power(D,2.5);
Mpor:=1433*power(D,1.8)*7200/7800;
Mpor:=20;
//Mwat:=800*h*h*h;
Mwat:=54970*power(H,4.46);
Mwat:=22.20;
Fpor:=3.14*d*d/4;
mob:=(Mpor+Mwat/3)/Fpor;
Pt:=mob*9.8;
w:=3.14*n/30;
i:=0;

repeat
inc(i);
Pj[i]:=-(-mob*R*w*w*(cos(fi*3.14/180)+lw*cos(2*fi*3.14/180)));
//if (fi>-0.00000001) and (fi<180.000000001) then Pd[i]:=Pg[i]-Pj[i]+Pt else
//if (fi>180.00000001) and (fi<360.000000001) then Pd[i]:=-Pg[i]+Pj[i]-Pt else
//if (fi>360.00000001) and (fi<540.000000001) then Pd[i]:=Pg[i]-Pj[i]+Pt else
//if (fi>540.00000001) and (fi<720.000000001) then Pd[i]:=-Pg[i]+Pj[i]-Pt;
Pd[i]:=Pg[i]-Pj[i]+Pt;
Hx:=r*(1+(lw/2)*sin(fi*3.14/180)*sin(fi*3.14/180)-cos(fi*3.14/180));
Vx:=w*r*(sin(fi*3.14/180)+(lw/2)*sin(2*fi*3.14/180));
ax:=w*w*r*(cos(fi*3.14/180)+lw*cos(2*fi*3.14/180));
//Pd:=Pg-Pj;
//if (fi>180.00000001) and (fi<360.000000001) then Pd:=-Pd else
//if (fi>540.00000001) and (fi<720.000000001) then Pd:=-Pd;
b:=arcsin(lw*sin(fi*3.14/180))/3.14*180;
Pn[i]:=Pd[i]*tan(b*3.14/180);
Pr[i]:=Pd[i]*cos((fi+b)*3.14/180)/cos(b*3.14/180);
Pk[i]:=Pd[i]*sin((fi+b)*3.14/180)/cos(b*3.14/180);
f[i]:=180-fi-b;
fi:=fi+dfi;
if fi>720 then fi:=fi-720;
until i=k;

AssignFile(input,'res.txt');
Rewrite(input);
writeln (input,'|fi|Pg|Pd|Pn|Pr|Pk|fkos',time:6:4);
writeln (input);
for i:=1 to k do
begin;
firas:=fin+dfi*(i-1);
if firas>720 then firas:=firas-720;
write(input,'|',(firas):6:5);
write(input,'|',(Pg[i]):6:5);
write(input,'|',(Pd[i]):6:5);
write(input,'|',(Pn[i]):6:5);
write(input,'|',(Pr[i]):6:5);
write(input,'|',(Pk[i]):6:5);
write(input,'|',(f[i]):6:5);
write(input,'|');
writeln (input);
end;
CloseFile(input);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Series1.Clear;
for i:=1 to k do
begin;
firas:=fin+dfi*(i-1);
if firas>360 then firas:=firas-720;

Chart1.Series[0].AddXY(firas,Pg[i]);
Chart1.Series[1].AddXY(firas,Pn[i]);
Chart1.Series[2].AddXY(firas,Pr[i]);
Chart1.Series[3].AddXY(firas,Pk[i]);
end;
end;
end.
