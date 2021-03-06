[Setup]
AppVersion=7.1
AppVerName=TextAdept v7.1
;;AllowNoIcons=yes
AppContact=mitchell.att.foicica.com
AppCopyright=� 2007-2014 Mitchell
AppName=TextAdept
AppPublisher=BIngalls(at)users.sourceforge.net
AppPublisherURL=https://github.com/bingalls/textadept_pkg/
;;AppPublisher=Mitchell
;;AppPublisherURL=http://foicica.com/textadept/
AppSupportURL=http://foicica.com/textadept/
AppUpdatesURL=http://foicica.com/textadept/
ChangesAssociations=yes
Compression=lzma2/ultra
DisableWelcomePage=True
DefaultDirName={pf}\TextAdept
DefaultGroupName=TextAdept
;;DirExistsWarning=no
DisableFinishedPage=yes
InfoBeforeFile=README.md
LicenseFile=LICENSE
PrivilegesRequired=poweruser
;;RestartIfNeededByRun=False
SetupIconFile=core\images\ta_32x32.ico
;;SourceDir=\archive
UninstallDisplayName=TextAdept
;;VersionInfoVersion=7
VersionInfoCompany=Mitchell
VersionInfoCopyright=� 2007-2014 Mitchell
VersionInfoProductName=TextAdept
;;VersionInfoProductVersion=7

;;[Languages]
;;Name: "english"; MessagesFile: "compiler:Default.isl"

[Types]
Name: "full"; Description: "Full installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom
Name: "minimal"; Description: "Minimal working installation"

[Components]
Types: full; Name: "cpp"; Description: "Associate C .c .cpp .cxx .h .hpp .hxx with TextAdept"
Types: full; Name: "css"; Description: "Associate CSS .css with TextAdept"
Types: full; Name: "html"; Description: "Associate HTML .html .htm with TextAdept"
Types: full; Name: "ini"; Description: "Associate .ini .cfg .cf .config .conf with TextAdept"
Types: full; Name: "java"; Description: "Associate Java .java with TextAdept"
Types: full; Name: "js"; Description: "Associate JavaScript .js with TextAdept"
Types: full; Name: "lua"; Description: "Associate Lua .lua with TextAdept"
Types: full; Name: "php"; Description: "Associate Php .php with TextAdept"
Types: full; Name: "python"; Description: "Associate Python .py with TextAdept"
Types: full; Name: "ruby"; Description: "Associate Ruby .rb .rhtml with TextAdept"
Types: full; Name: "sql"; Description: "Associate SQL .sql with TextAdept"
Types: full; Name: "txt"; Description: "Associate Text .txt with TextAdept"

[Registry]
;;Set EDITOR env var used by git, etc. Deletes on uninstall
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: string; ValueName: "EDITOR"; ValueData: "{app}\textadept.exe"; Flags: uninsdeletevalue;

;;;;;;;;;;;;;;;;;; File extension part (similar to command line "assoc")
Root: HKCR; Subkey: ".c"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: cpp;
Root: HKCR; Subkey: ".cpp"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: cpp;
Root: HKCR; Subkey: ".cxx"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: cpp;
Root: HKCR; Subkey: ".h"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: cpp;
Root: HKCR; Subkey: ".hpp"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: cpp;
Root: HKCR; Subkey: ".hxx"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: cpp;
Root: HKCR; Subkey: ".css"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: css;
Root: HKCR; Subkey: ".html"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: html;
Root: HKCR; Subkey: ".htm"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: html;
Root: HKCR; Subkey: ".ini"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: ini;
Root: HKCR; Subkey: ".cfg"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: ini;
Root: HKCR; Subkey: ".cf"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: ini;
Root: HKCR; Subkey: ".config"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: ini;
Root: HKCR; Subkey: ".conf"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: ini;
Root: HKCR; Subkey: ".java"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: java;
Root: HKCR; Subkey: ".js"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: js;
Root: HKCR; Subkey: ".html"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: html;
Root: HKCR; Subkey: ".htm"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: html;
Root: HKCR; Subkey: ".php"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: php;
Root: HKCR; Subkey: ".py"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: python;
Root: HKCR; Subkey: ".lua"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: lua;
Root: HKCR; Subkey: ".sql"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: sql;
Root: HKCR; Subkey: ".rb"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: ruby;
Root: HKCR; Subkey: ".rhtml"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: ruby;
Root: HKCR; Subkey: ".txt"; ValueType: string; ValueName: ""; ValueData: "TextAdeptFile"; Flags: uninsdeletevalue; Components: txt;

;;;;;;;;;;;;;;;;;; Common for file associations (similar to command line "ftype")
;; File type name:
Root: HKCR; Subkey: "TextAdeptFile"; ValueType: string; ValueName: ""; ValueData: "TextAdept File"; Flags: uninsdeletekey;
;; Default icon:
Root: HKCR; Subkey: "TextAdeptFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\TextAdept\core\images\ta_32x32.ico"
;;Use the following, when the icon resource is properly compiled back in:
;;Root: HKCR; Subkey: "TextAdeptFile\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\textadept.exe,0"
;; Double clicking:
Root: HKCR; Subkey: "TextAdeptFile\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\textadept.exe"" ""%1"""

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; END - File Associations
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

[Files]
Source: "*.*"; DestDir: "{app}";
Source: "core\*.*"; DestDir: "{app}\core";
Source: "core\images\*.*"; DestDir: "{app}\core\images";
Source: "core\locales\*.*"; DestDir: "{app}\core\locales";
Source: "doc\*.*"; DestDir: "{app}\doc";
Source: "doc\api\*.*"; DestDir: "{app}\doc\api";
Source: "doc\doxygen\html\*.*"; DestDir: "{app}\doc\doxygen\html";
Source: "doc\images\*.*"; DestDir: "{app}\doc\images";
Source: "etc\fonts\*.*"; DestDir: "{app}\etc\fonts";
Source: "etc\gtk-2.0\*.*"; DestDir: "{app}\etc\gtk-2.0";
Source: "etc\pango\*.*"; DestDir: "{app}\etc\pango";
Source: "lexers\*.*"; DestDir: "{app}\lexers";
Source: "lexers\themes\*.*"; DestDir: "{app}\lexers\themes";
Source: "lib\gdk-pixbuf-2.0\2.10.0\*.*"; DestDir: "{app}\lib\gdk-pixbuf-2.0\2.10.0";
Source: "lib\gtk-2.0\2.10.0\engines\*.*"; DestDir: "{app}\lib\gtk-2.0\2.10.0\engines";
Source: "modules\cpp\*.*"; DestDir: "{app}\modules\cpp";
Source: "modules\css\*.*"; DestDir: "{app}\modules\css";
Source: "modules\hypertext\*.*"; DestDir: "{app}\modules\hypertext";
Source: "modules\java\*.*"; DestDir: "{app}\modules\java";
Source: "modules\lua\*.*"; DestDir: "{app}\modules\lua";
Source: "modules\php\*.*"; DestDir: "{app}\modules\php";
Source: "modules\python\*.*"; DestDir: "{app}\modules\python";
Source: "modules\rails\*.*"; DestDir: "{app}\modules\rails";
Source: "modules\rhtml\*.*"; DestDir: "{app}\modules\rhtml";
Source: "modules\ruby\*.*"; DestDir: "{app}\modules\ruby";
Source: "modules\textadept\*.*"; DestDir: "{app}\modules\textadept";
Source: "scripts\*.*"; DestDir: "{app}\scripts";
Source: "share\themes\Default\gtk-2.0-key\*.*"; DestDir: "{app}\share\themes\Default\gtk-2.0-key";
Source: "share\themes\Emacs\gtk-2.0-key\*.*"; DestDir: "{app}\share\themes\Emacs\gtk-2.0-key";
Source: "share\themes\MS-Windows\gtk-2.0\*.*"; DestDir: "{app}\share\themes\MS-Windows\gtk-2.0";
Source: "share\themes\Raleigh\gtk-2.0\*.*"; DestDir: "{app}\share\themes\Raleigh\gtk-2.0";
Source: "src\*.*"; DestDir: "{app}\src";
Source: "themes\dark\*.*"; DestDir: "{app}\themes\dark";
Source: "themes\light\*.*"; DestDir: "{app}\themes\light";
Source: "themes\term\*.*"; DestDir: "{app}\themes\term";

[Icons]
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\TextAdept"; Filename: "{app}\textadept.exe"; IconFilename: "{app}\TextAdept\core\images\ta_32x32.ico"
Name: "{group}\TextAdept"; Filename: "{app}\textadept.exe"; IconFilename: "{app}\TextAdept\core\images\ta_32x32.ico"
Name: "{group}\Uninstall TextAdept"; Filename: "{uninstallexe}"
Name: "{app}\TextAdept"; Filename: "{app}\TextAdept\core\images\ta_32x32.ico"; WorkingDir: "{app}\TextAdept"; IconFilename: "{app}\TextAdept\core\images\ta_32x32.ico"
