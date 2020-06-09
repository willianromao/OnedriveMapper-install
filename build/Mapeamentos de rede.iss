; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Mapeamentos de rede"
#define MyAppVersion "1.0"
#define MyAppPublisher "Willian Rom�o"
#define MyAppURL "https://github.com/willianromao"
#define MyAppExeName "Mapeamentos de rede.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{A339DD68-65DB-4EA7-B060-3DC71FFE575F}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName=C:\OneDriveMapper
DisableProgramGroupPage=yes
LicenseFile=C:\OneDriveMapper\LICENSE
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\OneDriveMapper\build
OutputBaseFilename=Mapeamentos de rede
SetupIconFile=C:\OneDriveMapper\onedrive.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "C:\OneDriveMapper\LICENSE"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\OneDriveMapper\onedrive.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\OneDriveMapper\OneDriveMapper.ps1"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\OneDriveMapper\sharepoint.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\OneDriveMapper\teams.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\OneDriveMapper\Mapeamentos de rede.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
Name: "{commonstartup}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent