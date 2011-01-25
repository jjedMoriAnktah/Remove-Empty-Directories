; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#include "scripts\products.iss"

#include "scripts\products\dotnetfx35.iss"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{06F25DC8-71E2-44E2-805A-F15E15B51C74}
AppName=Remove Empty Directories
AppVersion=2.2
AppVerName=2.2
;AppVerName=Remove Empty Directories 2.2
AppPublisher=Jonas John
AppCopyright=Remove Empty Directories � Jonas John 2006-2011
AppPublisherURL=http://www.jonasjohn.de/
AppSupportURL=http://www.jonasjohn.de/
AppUpdatesURL=http://www.jonasjohn.de/
DefaultDirName={pf}\Remove Empty Directories
DefaultGroupName=Remove Empty Directories
AllowNoIcons=true
LicenseFile=license.txt
;InfoBeforeFile=before.txt
;InfoAfterFile=after.txt
OutputBaseFilename=red-v2.2-setup
SourceDir=.
OutputDir=.\output\
SetupIconFile=red.ico
Compression=lzma
SolidCompression=true
UninstallDisplayIcon={app}\MyProg.exe

;MinVersion=4.1,5.0
;PrivilegesRequired=admin
;ArchitecturesAllowed=x86 x64 ia64
;ArchitecturesInstallIn64BitMode=x64 ia64

[Languages]
;Name: english; MessagesFile: compiler:Default.isl
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "de"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: C:\Program Files\Inno Setup 5\Examples\MyProg.exe; DestDir: {app}; Flags: ignoreversion
Source: license.txt; DestDir: {app}; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\Remove Empty Directories; Filename: {app}\MyProg.exe
Name: {group}\{cm:UninstallProgram,Remove Empty Directories}; Filename: {uninstallexe}
Name: {commondesktop}\Remove Empty Directories; Filename: {app}\MyProg.exe; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\Remove Empty Directories; Filename: {app}\MyProg.exe; Tasks: quicklaunchicon

[Run]
Filename: {app}\MyProg.exe; Description: {cm:LaunchProgram,Remove Empty Directories}; Flags: nowait postinstall skipifsilent


[Code]
function InitializeSetup(): Boolean;
begin

	//install .net 3.5 if possible
	dotnetfx35();
	
	Result := true;
end;


[Messages]
; keep ?
BeveledLabel=Remove Empty Directories 2.2