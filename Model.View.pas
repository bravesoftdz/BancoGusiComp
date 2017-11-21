unit Model.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tfrm_modelo = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button11: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel4: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_modelo: Tfrm_modelo;

implementation

{$R *.dfm}

end.
