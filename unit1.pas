unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs, StdCtrls,
  DBGrids, Dbf, DB, Buttons, DBCtrls, LR_Class, LR_DBSet, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BBexit1: TBitBtn;
    BBexit2: TBitBtn;
    BBexit3: TBitBtn;
    BBexit4: TBitBtn;
    BBnew: TBitBtn;
    BBnewcancel1: TBitBtn;
    BBnewcancel2: TBitBtn;
    BBnewcancel3: TBitBtn;
    BBdelcancel: TBitBtn;
    BBnewok1: TBitBtn;
    BBnewok2: TBitBtn;
    BBnewok3: TBitBtn;
    BBdelok: TBitBtn;
    BBopen: TBitBtn;
    BBexport: TBitBtn;
    BBexit: TBitBtn;
    BBnewok: TBitBtn;
    BBnewcancel: TBitBtn;
    BBnewK2: TBitBtn;
    BBnewK3: TBitBtn;
    BBprintK1: TBitBtn;
    BBprintK2: TBitBtn;
    BBprintK3: TBitBtn;
    BBkallBack: TBitBtn;
    BBdelK1: TBitBtn;
    BBeditK1: TBitBtn;
    BBeditK2: TBitBtn;
    BBeditK3: TBitBtn;
    BBdelK2: TBitBtn;
    BBdelK3: TBitBtn;
    BBdelfed: TBitBtn;
    BBprintK4: TBitBtn;
    DBEcode: TDBEdit;
    DBEyear: TDBEdit;
    DBEfedK1: TDBEdit;
    DBEfedK2: TDBEdit;
    DBEfedK3: TDBEdit;
    DBEsportK1: TDBEdit;
    DBEeventK2: TDBEdit;
    DBEeventK3: TDBEdit;
    DBEk25: TDBEdit;
    DBEk26: TDBEdit;
    DBEk31: TDBEdit;
    DBEk32: TDBEdit;
    DBEk33: TDBEdit;
    DBEk34: TDBEdit;
    DBEk35: TDBEdit;
    DBEnameK3: TDBEdit;
    DBEnK2: TDBEdit;
    DBEnK3: TDBEdit;
    DBEsportK2: TDBEdit;
    DBEsportK3: TDBEdit;
    DBEyearK1: TDBEdit;
    DBEk24: TDBEdit;
    DBEnameK2: TDBEdit;
    DBEk11: TDBEdit;
    DBEk12: TDBEdit;
    DBEk13: TDBEdit;
    DBEk14: TDBEdit;
    DBEyearK2: TDBEdit;
    DBEk21: TDBEdit;
    DBEk22: TDBEdit;
    DBEk23: TDBEdit;
    DBEname: TDBEdit;
    DBEabbr: TDBEdit;
    DBEsport: TDBEdit;
    DBEyearK3: TDBEdit;
    Dbfed: TDbf;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Dsk3: TDatasource;
    Dsk2: TDatasource;
    Dsk1: TDatasource;
    Dsfed: TDatasource;
    Dbk3: TDbf;
    Dbk2: TDbf;
    Dbk1: TDbf;
    DataSetK2: TfrDBDataSet;
    DataSetK3: TfrDBDataSet;
    frReport1: TfrReport;
    GroupAlert: TGroupBox;
    GroupK3: TGroupBox;
    GroupKtable: TGroupBox;
    GroupKall: TGroupBox;
    GroupK1: TGroupBox;
    GroupFedtable: TGroupBox;
    GroupFed: TGroupBox;
    GroupK2: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label3: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Lalert: TLabel;
    Label39: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ExportDir: TSelectDirectoryDialog;
    procedure BBdelcancelClick(Sender: TObject);
    procedure BBdelfedClick(Sender: TObject);
    procedure BBdelK1Click(Sender: TObject);
    procedure BBdelK2Click(Sender: TObject);
    procedure BBdelK3Click(Sender: TObject);
    procedure BBdelokClick(Sender: TObject);
    procedure BBeditK1Click(Sender: TObject);
    procedure BBeditK2Click(Sender: TObject);
    procedure BBeditK3Click(Sender: TObject);
    procedure BBexitClick(Sender: TObject);
    procedure BBexportClick(Sender: TObject);
    procedure BBkallBackClick(Sender: TObject);
    procedure BBnewcancel1Click(Sender: TObject);
    procedure BBnewcancel2Click(Sender: TObject);
    procedure BBnewcancel3Click(Sender: TObject);
    procedure BBnewcancelClick(Sender: TObject);
    procedure BBnewClick(Sender: TObject);
    procedure BBnewK2Click(Sender: TObject);
    procedure BBnewK3Click(Sender: TObject);
    procedure BBnewok1Click(Sender: TObject);
    procedure BBnewok2Click(Sender: TObject);
    procedure BBnewok3Click(Sender: TObject);
    procedure BBnewokClick(Sender: TObject);
    procedure BBopenClick(Sender: TObject);
    procedure BBprintK1Click(Sender: TObject);
    procedure BBprintK2Click(Sender: TObject);
    procedure BBprintK3Click(Sender: TObject);
    procedure BBprintK4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form1: TForm1;
  extdir, extfile: string;
  src,dst:file of byte;
  b:byte;


implementation

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Dbfed.Active:= false;
  Dbfed.FilePath := 'data/';
  Dbfed.TableName := 'federacii.dbf';
  Dbfed.Exclusive := true;
  Dbfed.Open;
  Dbfed.Active := true;
end;

procedure TForm1.BBexitClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BBexportClick(Sender: TObject);
begin
  ExportDir.Execute;
  MkDir(ExportDir.FileName+'\'+DBEcode.Text+'-'+DBEyear.Text);
  extdir := ExportDir.FileName+'\'+DBEcode.Text+'-'+DBEyear.Text+'\';
  extfile := DBEcode.Text+'-'+DBEyear.Text+'_';
  AssignFile(src,dbfed.AbsolutePath+extfile+'1.dbf'); // источник
  AssignFile(dst,extdir+extfile+'1.dbf'); // приемник
  reset(src);
  rewrite(dst);
  while not(eof(src)) do
  begin
    read(src,b);
    write(dst,b);
  end;
  CloseFile(src);
  CloseFile(dst);
  AssignFile(src,dbfed.AbsolutePath+extfile+'2.dbf'); // источник
  AssignFile(dst,extdir+extfile+'2.dbf'); // приемник
  reset(src);
  rewrite(dst);
  while not(eof(src)) do
  begin
    read(src,b);
    write(dst,b);
  end;
  CloseFile(src);
  CloseFile(dst);
  AssignFile(src,dbfed.AbsolutePath+extfile+'3.dbf'); // источник
  AssignFile(dst,extdir+extfile+'3.dbf'); // приемник
  reset(src);
  rewrite(dst);
  while not(eof(src)) do
  begin
    read(src,b);
    write(dst,b);
  end;
  CloseFile(src);
  CloseFile(dst);
end;

procedure TForm1.BBeditK1Click(Sender: TObject);
begin
  Dbk1.Edit;
      DBEfedK1.Text := DBEabbr.Text;
      DBEsportK1.Text := DBEsport.Text;
      DBEyearK1.Text := DBEyear.Text;
  GroupKall.Visible := False;
  GroupK1.Visible := True;
  DBEK11.SetFocus;
end;

procedure TForm1.BBdelK1Click(Sender: TObject);
begin
  If DBEyearK1.Text > '' then
  begin
  BBdelok.Tag := 1;
  Lalert.Caption := 'Внимание!!! Вие сте на път да изтриете данните за ' +
                 DBEyeark1.Text + ' година по К1 за ' + DBEfedK1.Text;
  Groupalert.Visible := True;
  GroupKall.Visible := False;
  end;
end;

procedure TForm1.BBdelcancelClick(Sender: TObject);
begin
  GroupAlert.Visible := False;
  If BBdelok.Tag = 0 then GroupFed.Visible := True
     else If BBdelok.Tag = 4 then GroupFed.Visible := True
     else GroupKall.Visible := True;
end;

procedure TForm1.BBdelfedClick(Sender: TObject);
begin
  If DBEcode.Text > '' then
  Begin
    BBdelok.Tag := 4;
    Lalert.Caption := 'Внимание!!! Вие сте на път да изтриете ' +
                 DBEabbr.Text +'-'+ DBEsport.Text;
    Groupalert.Visible := True;
    GroupFed.Visible := False;
  end;
end;

procedure TForm1.BBdelK2Click(Sender: TObject);
begin
  If DBEyearK2.Text > '' then
  begin
  BBdelok.Tag := 2;
  Lalert.Caption := 'Внимание!!! Вие сте на път да изтриете протокол ' +
         DBEnk2.Text + '/' + DBEyeark2.Text + ' за К2 от ' + DBEfedK2.Text;
  Groupalert.Visible := True;
  GroupKall.Visible := False;
  end;
end;

procedure TForm1.BBdelK3Click(Sender: TObject);
begin
  If DBEyearK3.Text > '' then
  begin
  BBdelok.Tag := 3;
  Lalert.Caption := 'Внимание!!! Вие сте на път да изтриете протокол ' +
         DBEnk3.Text + '/' + DBEyeark3.Text + ' за К3 от ' + DBEfedK3.Text;
  Groupalert.Visible := True;
  GroupKall.Visible := False;
  end;
end;

procedure TForm1.BBdelokClick(Sender: TObject);
begin
  GroupAlert.Visible := False;
  If BBdelok.Tag = 0 then GroupFed.Visible := True
     else if BBdelok.Tag = 4 then GroupFed.Visible := True
     else GroupKall.Visible := True;
  case BBdelok.Tag of
    1:
    begin
    DBk1.Delete;
    Dbk1.PackTable;
    end;
    2:
    begin
    DBk2.Delete;
    Dbk2.PackTable;
    end;
    3:
    begin
    DBk3.Delete;
    Dbk3.PackTable;
    end;
    4:
    begin
      DBk1.Active := False;
      DBk2.Active := False;
      DBk3.Active := False;
      DeleteFile('data\'+DBEcode.Text+DBEYear.Text+'_1.dbf');
      DeleteFile('data\'+DBEcode.Text+DBEYear.Text+'_2.dbf');
      DeleteFile('data\'+DBEcode.Text+DBEYear.Text+'_3.dbf');
      DBfed.Delete;
      Dbfed.PackTable;
    end;
  end;
end;

procedure TForm1.BBeditK2Click(Sender: TObject);
begin
  Dbk2.Edit;
      DBEfedK2.Text := DBEabbr.Text;
      DBEsportK2.Text := DBEsport.Text;
      DBEyearK2.Text := DBEyear.Text;
  GroupKall.Visible := False;
  GroupK2.Visible := True;
  DBEnK2.SetFocus;
  BBnewcancel2.Tag := 1;
end;

procedure TForm1.BBeditK3Click(Sender: TObject);
begin
  Dbk3.Edit;
      DBEfedK3.Text := DBEabbr.Text;
      DBEsportK3.Text := DBEsport.Text;
      DBEyearK3.Text := DBEyear.Text;
  GroupKall.Visible := False;
  GroupK3.Visible := True;
  DBEnK3.SetFocus;
  BBnewcancel3.Tag := 1;
end;

procedure TForm1.BBkallBackClick(Sender: TObject);
begin
  GroupKall.Visible := False;
  GroupKtable.Visible := False;
  GroupFedtable.Visible := True;
  GroupFed.Visible := True;
end;

procedure TForm1.BBnewcancel1Click(Sender: TObject);
begin
  GroupK1.Visible := False;
  GroupKall.Visible := True;
end;

procedure TForm1.BBnewcancel2Click(Sender: TObject);
begin
  GroupK2.Visible := False;
  GroupKall.Visible := True;
  if BBnewcancel2.Tag = 0 then
  begin
  Dbk2.Delete;
  Dbk2.PackTable;
  end;
end;

procedure TForm1.BBnewcancel3Click(Sender: TObject);
begin
  GroupK3.Visible := False;
  GroupKall.Visible := True;
  If bbnewcancel3.Tag = 0 then
  begin
  Dbk3.Delete;
  Dbk3.PackTable;
  end;
end;

procedure TForm1.BBnewcancelClick(Sender: TObject);
begin
  DBECode.Enabled := False;
  DBEyear.Enabled := False;
  DBEname.Enabled := False;
  DBEsport.Enabled := false;
  DBEabbr.Enabled := false;
  BBnewok.Enabled := false;
  BBnewok.Visible := false;
  BBnewcancel.Enabled := false;
  BBnewcancel.Visible := false;
  BBopen.Enabled := True;
  BBexport.Enabled := True;
  BBdelfed.Enabled := True;
  Dbfed.PackTable;
end;

procedure TForm1.BBnewClick(Sender: TObject);
begin
  Dbfed.Append;
  DBEcode.Enabled := true;
  DBEcode.SetFocus;
  DBEyear.Enabled := true;
  DBEname.Enabled := true;
  DBEsport.Enabled := true;
  DBEabbr.Enabled := true;
  BBnewok.Enabled := true;
  BBnewok.Visible := true;
  BBnewcancel.Enabled := true;
  BBnewcancel.Visible := true;
  BBopen.Enabled := False;
  BBexport.Enabled := False;
  BBdelfed.Enabled := False;
end;

procedure TForm1.BBnewK2Click(Sender: TObject);
begin
  Dbk2.Append;
  GroupKall.Visible := False;
  GroupK2.Visible := True;
  DBEfedK2.Text := DBEabbr.Text;
  DBEsportK2.Text := DBEsport.Text;
  DBEyearK2.Text := DBEyear.Text;
  DBEnK2.SetFocus;
  BBnewcancel2.Tag := 0;
end;

procedure TForm1.BBnewK3Click(Sender: TObject);
begin
  Dbk3.Append;
  GroupKall.Visible := False;
  GroupK3.Visible := True;
  DBEfedK3.Text := DBEabbr.Text;
  DBEsportK3.Text := DBEsport.Text;
  DBEyearK3.Text := DBEyear.Text;
  DBEnK3.SetFocus;
  BBnewcancel3.Tag := 0;
end;

procedure TForm1.BBnewok1Click(Sender: TObject);
begin
  Dbk1.Post;
  GroupK1.Visible := False;
  GroupKall.Visible := True;
end;

procedure TForm1.BBnewok2Click(Sender: TObject);
begin
  Dbk2.Post;
  GroupK2.Visible := False;
  GroupKall.Visible := True;
end;

procedure TForm1.BBnewok3Click(Sender: TObject);
begin
  Dbk3.Post;
  GroupK3.Visible := False;
  GroupKall.Visible := True;
end;

procedure TForm1.BBnewokClick(Sender: TObject);
begin
  Dbfed.Post;
  DBEname.Enabled := false;
  DBEyear.Enabled := false;
  DBEsport.Enabled := false;
  DBEabbr.Enabled := false;
  DBEcode.Enabled := false;
  BBnewok.Enabled := false;
  BBnewok.Visible := false;
  BBnewcancel.Enabled := false;
  BBnewcancel.Visible := false;
  BBopen.Enabled := True;
  BBexport.Enabled := True;
  BBdelfed.Enabled := True;
  Dbk1.Active := false;
  Dbk1.FilePath := 'data/';
  Dbk1.TableLevel := 3;
  Dbk1.TableName := DBEcode.Text + '-' + DBEyear.Text + '_1.dbf';
  With Dbk1.FieldDefs do
  begin
   Clear;
   Add('Year', ftInteger, 4, True);
   Add('Sport', ftString, 30, True);
   Add('Federation', ftString, 10, True);
   Add('k11', ftInteger, 6, True);
   Add('k12', ftInteger, 6, True);
   Add('k13', ftInteger, 6, True);
   Add('k14', ftInteger, 3, True);
  End;
  Dbk1.CreateTable;
  Dbk1.Exclusive := true;
  Dbk1.Open;
  Dbk1.Active := true;
  Dbk2.Active := false;
  Dbk2.FilePath := 'data/';
  Dbk2.TableLevel := 3;
  Dbk2.TableName := DBEcode.Text + '-' + DBEyear.Text + '_2.dbf';
  With Dbk2.FieldDefs do
  begin
   Clear;
   Add('N', ftInteger, 3, True);
   Add('Year', ftInteger, 4, True);
   Add('Sport', ftString, 30, True);
   Add('Federation', ftString, 10, True);
   Add('Name', ftString, 30, True);
   Add('Event', ftString, 20, True);
   Add('k21', ftString, 2, True);
   Add('k22', ftInteger, 1, True);
   Add('k23', ftInteger, 1, True);
   Add('k24', ftInteger, 3, True);
   Add('k25', ftInteger, 1, True);
   Add('k26', ftInteger, 1, True);
  End;
  Dbk2.CreateTable;
  Dbk2.Exclusive := true;
  Dbk2.Open;
  Dbk2.Active := true;
  Dbk3.Active := false;
  Dbk3.FilePath := 'data/';
  Dbk3.TableLevel := 3;
  Dbk3.TableName := DBEcode.Text + '-' + DBEyear.Text + '_3.dbf';
  With Dbk3.FieldDefs do
  begin
   Clear;
   Add('N', ftInteger, 3, True);
   Add('Year', ftInteger, 4, True);
   Add('Sport', ftString, 30, True);
   Add('Federation', ftString, 10, True);
   Add('Name', ftString, 30, True);
   Add('Event', ftString, 20, True);
   Add('k31', ftInteger, 1, True);
   Add('k32', ftInteger, 1, True);
   Add('k33', ftInteger, 3, True);
   Add('k34', ftInteger, 1, True);
   Add('k35', ftInteger, 1, True);
  End;
  Dbk3.CreateTable;
  Dbk3.Exclusive := true;
  Dbk3.Open;
  Dbk3.Active := true;
end;

procedure TForm1.BBopenClick(Sender: TObject);
begin
  GroupFedtable.Visible := False;
  GroupKtable.Visible := True;
  GroupFed.Visible := False;
  GroupKall.Visible := True;
  Dbk1.Active := false;
  Dbk1.FilePath := 'data/';
  Dbk1.TableName := DBEcode.Text + '-' + DBEyear.Text + '_1.dbf';
  Dbk1.Exclusive := True;
  Dbk1.Active := true;
  Dbk2.Active := false;
  Dbk2.FilePath := 'data/';
  Dbk2.TableName := DBEcode.Text + '-' + DBEyear.Text + '_2.dbf';
  Dbk2.Exclusive := True;
  Dbk2.Active := true;
  Dbk3.Active := false;
  Dbk3.FilePath := 'data/';
  Dbk3.TableName := DBEcode.Text + '-' + DBEyear.Text + '_3.dbf';
  Dbk3.Exclusive := True;
  Dbk3.Active := true;
end;

procedure TForm1.BBprintK1Click(Sender: TObject);
begin
  frReport1.LoadFromFile('k1.lrf');
  frReport1.ShowReport;
end;

procedure TForm1.BBprintK2Click(Sender: TObject);
begin
  frReport1.LoadFromFile('k2.lrf');
  frReport1.ShowReport;
end;

procedure TForm1.BBprintK3Click(Sender: TObject);
begin
  frReport1.LoadFromFile('k3.lrf');
  frReport1.ShowReport;
end;

procedure TForm1.BBprintK4Click(Sender: TObject);
begin
  frReport1.LoadFromFile('kall.lrf');
  frReport1.ShowReport;
end;


initialization
  {$I unit1.lrs}

end.

