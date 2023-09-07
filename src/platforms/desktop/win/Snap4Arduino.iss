; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{79712027-5DAE-425B-8534-1CA699720EA5}
AppName=Snap4Arduino
AppVersion=@AppVersion
AppVerName=Snap4Arduino-@AppVersion
AppPublisher=Snap4Arduino team
AppPublisherURL=https://snap4arduino.rocks
AppSupportURL=https://snap4arduino.rocks
AppUpdatesURL=https://snap4arduino.rocks
DefaultDirName={pf}\Snap4Arduino
DefaultGroupName=Snap4Arduino
AllowNoIcons=no
OutputDir=.
OutputBaseFilename=Snap4Arduino-@AppVersion-@Architecture
SetupIconFile=s4a.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "catalan"; MessagesFile: "compiler:Languages\Catalan.isl"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "*.*"; Excludes: "Snap4Arduino.iss"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Snap4Arduino"; Filename: "{app}\Snap4Arduino.exe"; IconFilename: "{app}\s4a.ico"; WorkingDir: "{app}"
Name: "{group}\{cm:ProgramOnTheWeb,Snap4Arduino}"; Filename: "http://snap4arduino.rocks"
Name: "{group}\{cm:UninstallProgram,Snap4Arduino}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\Snap4Arduino"; Filename: "{app}\Snap4Arduino.exe"; IconFilename: "{app}\s4a.ico"; Tasks: desktopicon; WorkingDir: "{app}"
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\Snap4Arduino"; Filename: "{app}\Snap4Arduino.exe"; Tasks: quicklaunchicon; WorkingDir: "{app}"

[Run]
Filename: "{app}\Snap4Arduino.exe"; Description: "{cm:LaunchProgram,Snap4Arduino}"; Flags: nowait postinstall skipifsilent
