;;Windows setup for TextAdept editor
;;Setup code is copyright 2011 Bruce Ingalls bingalls(at)users.sf(dot)net
;; See TextAdept's LICENSE file for MIT licensing details
;;See also InnoSetup's License

[Setup]
AllowNoIcons=true
AppName=TextAdept
AppVerName=TextAdept 3.7
AppPublisher=BIngalls(at)users.sourceforge.net
AppPublisherURL=http://code.google.com/p/textadept/
AppSupportURL=http://code.google.com/p/textadept/
AppUpdatesURL=http://code.google.com/p/textadept/
DefaultDirName={pf}\textadept
DefaultGroupName=TextAdept
DirExistsWarning=no
DisableFinishedPage=yes
;; InfoBeforeFile=\readme.txt
SourceDir=\Program Files\textadept
LicenseFile=LICENSE

[Types]
Name: "full"; Description: "Full installation"; Check: CanWriteHKCR;
Name: "minimal"; Description: "Minimal working installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Components]
;;I cannot figure out how to not ignore the first line.
;;Any Innosetup gurus: send me a fix!
Types: full; Name: "txt"; Description: "Associate Text *.txt with TextAdept"; Check: CanWriteHKCR;
Types: full; Name: "ini"; Description: "Associate *.cfg *.conf *.ini with TextAdept"; Check: CanWriteHKCR;

[Registry]
;;;;;;;;;;;;;;;;;; File extension part (similar to command line "assoc")
Root: HKCR; Subkey: ".cfg"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Check: CanWriteHKCR; Components: ini;
Root: HKCR; Subkey: ".conf"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Check: CanWriteHKCR; Components: ini;
Root: HKCR; Subkey: ".ini"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Check: CanWriteHKCR; Components: ini;
Root: HKCR; Subkey: ".txt"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Check: CanWriteHKCR; Components: txt;

;;;;;;;;;;;;;;;;;; Common for file associations (similar to command line "ftype")
;; File type name:
Root: HKCR; Subkey: "TextAdeptFile"; ValueType: string; ValueName: ""; ValueData: "TextAdept File"; Check: CanWriteHKCR;
;; Default icon:
Root: HKCR; Subkey: "TextAdeptFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\textadept.exe,0"; Check: CanWriteHKCR;
;; Double clicking:
Root: HKCR; Subkey: "TextAdeptFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: "{app}\textadept.exe %1"; Check: CanWriteHKCR;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; END - File Associations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[Files]
Source: "*.*"; DestDir: "{app}";
Source: "core\*.*"; DestDir: "{app}\core\";
Source: "core\images\*.*"; DestDir: "{app}\core\images\";
Source: "doc\*.*"; DestDir: "{app}\doc\";
Source: "doc\doxygen\html\*.*"; DestDir: "{app}\doc\doxygen\html\";
Source: "doc\manual\*.*"; DestDir: "{app}\doc\manual\";
Source: "doc\manual\images\*.*"; DestDir: "{app}\doc\manual\images\";
Source: "doc\modules\*.*"; DestDir: "{app}\doc\modules\";
Source: "etc\fonts\*.*"; DestDir: "{app}\etc\fonts\";
Source: "etc\gtk-2.0\*.*"; DestDir: "{app}\etc\gtk-2.0\";
Source: "etc\pango\*.*"; DestDir: "{app}\etc\pango\";
Source: "lexers\*.*"; DestDir: "{app}\lexers\";
Source: "lexers\themes\*.*"; DestDir: "{app}\lexers\themes\";
Source: "lib\gtk-2.0\2.10.0\engines\*.*"; DestDir: "{app}\lib\gtk-2.0\2.10.0\engines\";
Source: "modules\cpp\*.*"; DestDir: "{app}\modules\cpp\";
Source: "modules\lua\*.*"; DestDir: "{app}\modules\lua\";
Source: "modules\textadept\*.lua"; DestDir: "{app}\modules\textadept\";
Source: "modules\textadept\mime_types.conf"; DestDir: "{app}\modules\textadept\";
Source: "share\themes\Default\gtk-2.0-key\*.*"; DestDir: "{app}\share\themes\Default\gtk-2.0-key\";
Source: "share\themes\Emacs\gtk-2.0-key\*.*"; DestDir: "{app}\share\themes\Emacs\gtk-2.0-key\";
Source: "share\themes\MS-Windows\gtk-2.0\*.*"; DestDir: "{app}\share\themes\MS-Windows\gtk-2.0\";
Source: "share\themes\Raleigh\gtk-2.0\*.*"; DestDir: "{app}\share\themes\Raleigh\gtk-2.0\";
Source: "src\*.*"; DestDir: "{app}\src\";
Source: "src\pkg\*.*"; DestDir: "{app}\src\pkg\";
Source: "themes\dark\*.*"; DestDir: "{app}\themes\dark\";
Source: "themes\light\*.*"; DestDir: "{app}\themes\light\";
Source: "themes\scite\*.*"; DestDir: "{app}\themes\scite\";

[Tasks]
Name: "quicklaunchicon"; Description: "Create a &Quick Launch icon"; GroupDescription: "Additional icons:"
;; Flags: checked

[Icons]
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\TextAdept"; Filename: "{app}\textadept.exe"; Tasks: quicklaunchicon
Name: "{group}\TextAdept"; Filename: "{app}\textadept.exe"
Name: "{group}\Uninstall TextAdept"; Filename: "{uninstallexe}"

[Code]
function CanWriteHKCR(): Boolean;
begin
   result := IsAdminLoggedOn();
end; { CanWriteHKCR }
