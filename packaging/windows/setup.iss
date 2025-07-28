[Setup]
AppName=本地边缘算力基座
AppVersion=1.0.0
AppPublisher=伍陆 (WULU)
DefaultDirName={autopf}\HamiEdgeBase
; 注意：这里的OutputBaseFilename会被GitHub Actions覆盖，但本地测试时有用
OutputBaseFilename=setup-WULU-base-windows-x64 
ArchitecturesInstallIn64BitMode=x64

[Files]
; Action会将编译好的文件和模型都放到 "staging" 目录下，我们从这里打包
Source: "staging\*"; DestDir: "{app}"; Flags: recursesubdirs

[Icons]
Name: "{commondesktop}\启动算力基座"; Filename: "{app}\bin\llama-server.exe"; Parameters: "-m ""{app}\model\qwen3-0.6b-q4_1.gguf"" --host 127.0.0.1 --port 56565"