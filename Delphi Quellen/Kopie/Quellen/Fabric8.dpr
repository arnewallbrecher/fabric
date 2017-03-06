program Fabric8;
uses
  Forms,
  Globvar,
  SysUtils,
  Dialogs,
  Unit1 in 'Unit1.pas' {Form1  Fabric7},
  Unit2 in 'Unit2.pas' {Form2  Liste der Unterprogramme},
  Unit3 in 'Unit3.pas' {Form3  Hauptformular Berechnen},
  Unit4 in 'Unit4.pas' {Form4  Berechnen manuell},
  Unit5 in 'Unit5.pas' {Form5  Berechnen Festplatte},
  Unit6 in 'Unit6.pas' {Form6  Hauptformular Rotation},
  Unit7 in 'Unit7.pas' {Form7  Rotation manuell},
  Unit8 in 'Unit8.pas' {Form8  Rotation Festplatte},
  Unit9 in 'Unit9.pas' {Form9  Plotten Hauptprogramm},
  Unit10 in 'Unit10.pas' {Form10 Plotten manuell},
  Unit11 in 'Unit11.pas' {Form11 Plotten Datentr‰ger},
  Unit12 in 'Unit12.pas' {Form12, Grafik},
  Unit13 in 'Unit13.pas' {Kleinkreise, Hauptformular},
  Unit14 in 'Unit14.pas' {Kleinkreise, Dateneingabe},
  Unit15 in 'Unit15.pas' {Form15, Maﬂzahlen},
  Unit16 in 'Unit16.pas' {Form16, Maﬂzahlen, manuelle Eingabe},
  Unit17 in 'Unit17.pas' {Form17, Maﬂzahlen, manuelle Eingabe},
  Unit18 in 'Unit18.pas' {Form18, Maﬂzahlen, Eingabe von Datentr‰ger},
  Unit19 in 'Unit19.pas' {Form19, Richtungsrose, Plot},
  Unit20 in 'Unit20.pas' {Form20, GEFUEGE, Hauptformular},
  Unit21 in 'Unit21.pas' {Form21, GEFUEGE, Plot},
  Unit22 in 'Unit22.pas' {Form22, Isolinien, Hauptformular},
  Unit23 in 'Unit23.pas' {Form23, Isolinien, Plotformular},
  Unit24 in 'Unit24.pas' {Form24, Clodat, Hauptformular},
  Unit25 in 'Unit25.pas' {Form25, Clodat, Tabelle},
  Unit26 in 'Unit26.pas' {Form26, Pal‰ospannung, Hauptformular},
  Unit27 in 'Unit27.pas' {Form27, Pal‰ospannung, manuell},
  Unit28 in 'Unit28.pas' {Form28, Pal‰ospannung, Diskette},
  Unit29 in 'Unit29.pas' {Form29, Pal‰ospannung, Plot},
  Unit30 in 'Unit30.pas' {Form30, Harnische und Striemungen, Hauptformular},
  Unit31 in 'Unit31.pas' {Form31, Harnische und Striemungen, Plot},
  Unit32 in 'Unit32.pas' {Form32, Hoeppener, Hauptformular},
  Unit33 in 'Unit33.pas' {Form32, Hoeppener, Plot},
  Unit34 in 'Unit34.pas' {Form34, Formfaktor, Hauptformular},
  Unit35 in 'Unit35.pas' {Form35, Formfaktor, Plot},
  Unit36 in 'Unit36.pas' {Form36, Projektionen, Hauptformular},
  Unit37 in 'Unit37.pas' {Form37, Projektionen, Plot},
  Unit38 in 'Unit38.pas' {Form38, R%-G%, Hauptformular},
  Unit39 in 'Unit39.pas' {Form39, R%-G%, manuell},
  Unit40 in 'Unit40.pas' {Form40, R%-G%, Diskette},
  Unit41 in 'Unit41.pas' {Form41, R%-G%, Plot},
  Unit42 in 'Unit42.pas' {Form42, Woodcock, Hauptprogramm},
  Unit43 in 'Unit43.pas' {Form43, Woodcock, manuell},
  Unit44 in 'Unit44.pas' {Form44, Woodcock, Diskette},
  Unit45 in 'Unit45.pas' {Form45, Woodcock, Plot},
  Unit46 in 'Unit46.pas' {Form46, Vollmer, Hauptformular},
  Unit47 in 'Unit47.pas' {Form47, Vollmer, Plot},
  Unit48 in 'Unit48.pas' {Form48, Fourier, Hauptformular},
  Unit49 in 'Unit49.pas' {Form49, Fourier, manuell},
  Unit50 in 'Unit50.pas' {Form50, Fourier, Diskette},
  Unit51 in 'Unit51.pas' {Form51, Fourier, Plot},
  Unit52 in 'Unit52.pas' {Form52, Fourier, Hauptformular},
  Unit53 in 'Unit53.pas' {Form53, Fourier, manuell},
  Unit54 in 'Unit54.pas' {Form54, Fourier, Diskette},
  Unit55 in 'Unit55.pas' {Form55, Fourier, Plot},
  Unit56 in 'Unit56.pas' {Form56, Rekonstruktion, Hauptformular},
  Unit57 in 'Unit57.pas' {Form57, Rekonstruktion, Plot},
  Unit58 in 'Unit58.pas' {Form58, Scherkasten, Hauptformular},
  Unit59 in 'Unit59.pas' {Form59, Scherkasten},
  Unit60 in 'Unit60.pas' {Form60, Talbot, Hauptformular},
  Unit61 in 'Unit61.pas' {Form61, Talbot, manuell},
  Unit62 in 'Unit62.pas' {Form62, Talbot, Diskette},
  Unit63 in 'Unit63.pas' {Form63, Talbot, Grafik},
  Unit64 in 'Unit64.pas' {Form64, Excel},
  Unit65 in 'Unit65.pas' {Form65, Fry, Hauptformular},
  Unit66 in 'Unit66.pas' {Form66, Fry, Bild impoRekonstruktion, Hauptformular},
  Unit67 in 'Unit67.pas' {Form67, Fry, Grafik},
  Unit68 in 'Unit68.pas' {Form68, Fourier, Bild importieren},
  Unit69 in 'Unit69.pas' {Form69, Talpha, Bildimportieren},
  Unit70 in 'Unit70.pas' {Form70, Panozzo, Startseite},
  Unit71 in 'Unit71.pas' {Form71, Panozzo, Polygone eingeben},
  Unit72 in 'Unit72.pas' {Form72, Panozzo, Plot},
  Unit73 in 'Unit73.pas' {Form73, Isogonen, Startseite},
  Unit74 in 'Unit74.pas' {Form74, Isogonen, Plot},
  Unit75 in 'Unit75.pas' {Form75, Z‰hlkalotten},
  Unit76 in 'Unit76.pas' {Form73, Isogonen, Startseite},
  Unit77 in 'Unit77.pas' {Form74, Signifikanz, Grafik},
  Unit78 in 'Unit78.pas' {Form78, Richtungsrose,Foto},
  Unit79 in 'Unit79.pas' {Form79, Eintragen von Messwerten},
  Unit80 in 'Unit80.pas' {Form80, Messwerte, manuell},
  Unit81 in 'Unit81.Pas' {Form81, Messwerte, Grafik},
  Unit82 in 'Unit82.pas' {Form82, Messwerte, von Diskette},
  Unit83 in 'Unit83.pas' {Form83, Messwerte, aus Bitmap},
  Unit84 in 'Unit84.pas' {Form84, Messwerte, Excel},
  Unit85 in 'Unit85.pas' {Form85, Plotten von Richtungsdaten},
  Unit86 in 'Unit86.pas' {Form86, Rf/Phi, Hauptformular},
  Unit87 in 'Unit87.pas' {Form87, Rf/Phi, Bitmap},
  Unit88 in 'Unit88.pas' {Form88, Rf/Phi, Grafik},
  Unit89 in 'Unit89.pas' {Form89, Grosskreise},
  Unit90 in 'Unit90.pas' {Form90, Mohrscher Kreis},
  Unit91 in 'Unit91.pas' {Form91, Mohrscher Kreis};

{$R *.RES}

begin
  GetDir(0, DirectS);
  if not fileexists (DirectS+'\'+'Lizenz.bin') then
  begin
    showmessage('Fabric7 is installed in '+chr(13)+
                 DirectS+'.'+chr(13)+
                'To run the program, you need a licence'+chr(13)+
                'which will be send to you when you write an e-mail to'+chr(13)+
                'eckart.wallbrecher@uni-graz.at.');
  end
  else
  begin
    Application.Initialize;
    Application.Icon.LoadFromFile(DirectS+'\'+'Symbol1.ico');
    Application.CreateForm(TForm1, Form1);
    Application.CreateForm(TForm2, Form2);
    Application.CreateForm(TForm3, Form3);
    Application.CreateForm(TForm4, Form4);
    Application.CreateForm(TForm5, Form5);
    Application.CreateForm(TForm6, Form6);
    Application.CreateForm(TForm7, Form7);
    Application.CreateForm(TForm8, Form8);
    Application.CreateForm(TForm9, Form9);
    Application.CreateForm(TForm10, Form10);
    Application.CreateForm(TForm11, Form11);
    Application.CreateForm(TForm12, Form12);
    Application.CreateForm(TForm13, Form13);
    Application.CreateForm(TForm14, Form14);
    Application.CreateForm(TForm15, Form15);
    Application.CreateForm(TForm18, Form18);
    Application.CreateForm(TForm19, Form19);
    Application.CreateForm(TForm22, Form22);
    Application.CreateForm(TForm23, Form23);
    Application.CreateForm(TForm24, Form24);
    Application.CreateForm(TForm25, Form25);
    Application.CreateForm(TForm26, Form26);
    Application.CreateForm(TForm27, Form27);
    Application.CreateForm(TForm28, Form28);
    Application.CreateForm(TForm29, Form29);
    Application.CreateForm(TForm30, Form30);
    Application.CreateForm(TForm31, Form31);
    Application.CreateForm(TForm32, Form32);
    Application.CreateForm(TForm33, Form33);
    Application.CreateForm(TForm34, Form34);
    Application.CreateForm(TForm35, Form35);
    Application.CreateForm(TForm36, Form36);
    Application.CreateForm(TForm37, Form37);
    Application.CreateForm(TForm38, Form38);
    Application.CreateForm(TForm39, Form39);
    Application.CreateForm(TForm40, Form40);
    Application.CreateForm(TForm41, Form41);
    Application.CreateForm(TForm42, Form42);
    Application.CreateForm(TForm43, Form43);
    Application.CreateForm(TForm44, Form44);
    Application.CreateForm(TForm45, Form45);
    Application.CreateForm(TForm46, Form46);
    Application.CreateForm(TForm47, Form47);
    Application.CreateForm(TForm48, Form48);
    Application.CreateForm(TForm49, Form49);
    Application.CreateForm(TForm50, Form50);
    Application.CreateForm(TForm51, Form51);
    Application.CreateForm(TForm52, Form52);
    Application.CreateForm(TForm53, Form53);
    Application.CreateForm(TForm54, Form54);
    Application.CreateForm(TForm55, Form55);
    Application.CreateForm(TForm56, Form56);
    Application.CreateForm(TForm57, Form57);
    Application.CreateForm(TForm58, Form58);
    Application.CreateForm(TForm59, Form59);
    Application.CreateForm(TForm60, Form60);
    Application.CreateForm(TForm61, Form61);
    Application.CreateForm(TForm62, Form62);
    Application.CreateForm(TForm63, Form63);
    Application.CreateForm(TForm64, Form64);
    Application.CreateForm(TForm65, Form65);
    Application.CreateForm(TForm66, Form66);
    Application.CreateForm(TForm67, Form67);
    Application.CreateForm(TForm68, Form68);
    Application.CreateForm(TForm69, Form69);
    Application.CreateForm(TForm70, Form70);
    Application.CreateForm(TForm71, Form71);
    Application.CreateForm(TForm72, Form72);
    Application.CreateForm(TForm73, Form73);
    Application.CreateForm(TForm74, Form74);
    Application.CreateForm(TForm75, Form75);
    Application.CreateForm(TForm76, Form76);
    Application.CreateForm(TForm77, Form77);
    Application.CreateForm(TForm78, Form78);
    Application.CreateForm(TForm79, Form79);
    Application.CreateForm(TForm80, Form80);
    Application.CreateForm(TForm81, Form81);
    Application.CreateForm(TForm82, Form82);
    Application.CreateForm(TForm82, Form82);
    Application.CreateForm(TForm83, Form83);
    Application.CreateForm(TForm84, Form84);
    Application.CreateForm(TForm85, Form85);
    Application.CreateForm(TForm86, Form86);
    Application.CreateForm(TForm87, Form87);
    Application.CreateForm(TForm88, Form88);
    Application.CreateForm(TForm89, Form89);
    Application.CreateForm(TForm90, Form90);
    Application.CreateForm(TForm91, Form91);
    Application.Run;
  end;
end.
