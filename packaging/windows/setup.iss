[Setup]
AppName=WULU AI 本地基座
AppVersion=1.0.0
AppPublisher=WULU
DefaultDirName={autopf}\WuluAIBase
OutputBaseFilename=setup-wulu-ai-base-windows-x64
ArchitecturesInstallIn64BitMode=x64

[Files]
; --- 修正在这里 ---
; 我们使用 ..\..\staging\* 来表示从当前目录向上走两级，再进入staging目录
; 这样就能正确找到文件了
Source: "..\..\staging\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{commondesktop}\启动 WULU AI 基座"; Filename: "{app}\bin\llama-server.exe"; Parameters: "-m ""{app}\model\qwen3-0.6b-q4_1.gguf"" --host 127.0.0.1 --port 56565 --log-disable"
Name: "{group}\WULU AI 本地基座\启动服务"; Filename: "{app}\bin\llama-server.exe"; Parameters: "-m ""{app}\model\qwen3-0.6b-q4_1.gguf"" --host 127.0.0.1 --port 56565 --log-disable"
Name: "{group}\WULU AI 本地基座\卸载"; Filename: "{uninstallexe}"